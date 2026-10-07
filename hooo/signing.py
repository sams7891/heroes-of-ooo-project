"""APK v2 RSA/SHA-256 signing for this project, without an Android SDK.

Implements the single-signer subset of the AOSP v2 specification. The verifier
accepts that subset, not every possible Android signing scheme or algorithm.
Use Android's apksigner too when it is available; see docs/BUILDING.md.
"""
from datetime import datetime, timedelta, timezone
import hashlib
import os
from pathlib import Path
import struct

from cryptography import x509
from cryptography.exceptions import InvalidSignature
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding, rsa
from cryptography.x509.oid import NameOID

V2_ID = 0x7109871a
ALGORITHM = 0x0103
MAGIC = b'APK Sig Block 42'
CHUNK = 1024*1024


def lp(value):
    return struct.pack('<I', len(value))+value


def read_lp(data, pos=0):
    if pos+4 > len(data):
        raise ValueError('Truncated signing field')
    size = struct.unpack_from('<I', data, pos)[0]
    end = pos+4+size
    if end > len(data):
        raise ValueError('Truncated signing field value')
    return data[pos+4:end], end


def eocd(data):
    # ZIP signatures can occur inside a comment; require the record to end
    # exactly at EOF and reject ZIP64/multi-volume inputs for this signer.
    pos = len(data)-22
    lower = max(0, len(data)-65557)
    while pos >= lower:
        pos = data.rfind(b'PK\x05\x06', lower, pos+4)
        if pos < 0:
            break
        if pos+22 <= len(data):
            fields = struct.unpack_from('<4H2IH', data, pos+4)
            disk, cd_disk, disk_count, total, size, offset, comment = fields
            if pos+22+comment == len(data):
                if disk or cd_disk or disk_count != total or total == 65535:
                    raise ValueError('Unsupported ZIP64 or multi-volume archive')
                if offset+size != pos:
                    raise ValueError('Invalid ZIP central directory')
                return pos, offset
        pos -= 1
    raise ValueError('ZIP end-of-central-directory not found')


def digest(sections):
    children = []
    for section in sections:
        for pos in range(0, len(section), CHUNK):
            part = section[pos:pos+CHUNK]
            children.append(hashlib.sha256(b'\xa5'+struct.pack('<I',len(part))+part).digest())
    return hashlib.sha256(b'\x5a'+struct.pack('<I',len(children))+b''.join(children)).digest()


def load_identity(directory):
    directory = Path(directory)
    key_path, cert_path = directory/'key.pem', directory/'certificate.der'
    if key_path.exists() != cert_path.exists():
        raise ValueError('Signing key/certificate pair is incomplete; restore both files')
    if key_path.exists():
        key = serialization.load_pem_private_key(key_path.read_bytes(), password=None)
        cert = x509.load_der_x509_certificate(cert_path.read_bytes())
    else:
        directory.mkdir(parents=True, exist_ok=True)
        key = rsa.generate_private_key(public_exponent=65537, key_size=2048)
        name = x509.Name([x509.NameAttribute(NameOID.COMMON_NAME, 'Heroes of Ooo Personal Development')])
        now = datetime.now(timezone.utc)
        cert = (x509.CertificateBuilder().subject_name(name).issuer_name(name)
                .public_key(key.public_key()).serial_number(x509.random_serial_number())
                .not_valid_before(now-timedelta(days=1)).not_valid_after(now+timedelta(days=3650))
                .sign(key, hashes.SHA256()))
        # Keys are local-only and excluded from the downloadable project.
        fd = os.open(key_path, os.O_WRONLY|os.O_CREAT|os.O_EXCL, 0o600)
        with os.fdopen(fd, 'wb') as stream:
            stream.write(key.private_bytes(serialization.Encoding.PEM,
                         serialization.PrivateFormat.PKCS8, serialization.NoEncryption()))
        cert_path.write_bytes(cert.public_bytes(serialization.Encoding.DER))
    if not isinstance(key, rsa.RSAPrivateKey) or key.key_size < 2048:
        raise ValueError('Expected an RSA signing key of at least 2048 bits')
    if key.public_key().public_numbers() != cert.public_key().public_numbers():
        raise ValueError('Signing key does not match certificate')
    return key, cert


def sign(unsigned, directory):
    end, cd = eocd(unsigned)
    if unsigned[max(0,cd-16):cd] == MAGIC:
        raise ValueError('Input already has a signing block; repack it before signing')
    key, cert = load_identity(directory)
    protected_digest = digest([unsigned[:cd], unsigned[cd:end], unsigned[end:]])
    algorithm = struct.pack('<I', ALGORITHM)
    certificate = cert.public_bytes(serialization.Encoding.DER)
    public = key.public_key().public_bytes(serialization.Encoding.DER,
                                          serialization.PublicFormat.SubjectPublicKeyInfo)
    signed_data = lp(lp(algorithm+lp(protected_digest)))+lp(lp(certificate))+lp(b'')
    signature = key.sign(signed_data, padding.PKCS1v15(), hashes.SHA256())
    signer = lp(signed_data)+lp(lp(algorithm+lp(signature)))+lp(public)
    scheme = lp(lp(signer))
    pair = struct.pack('<Q',4+len(scheme))+struct.pack('<I',V2_ID)+scheme
    size = len(pair)+24
    block = struct.pack('<Q',size)+pair+struct.pack('<Q',size)+MAGIC
    tail = bytearray(unsigned[end:])
    struct.pack_into('<I',tail,16,cd+len(block))
    result = unsigned[:cd]+block+unsigned[cd:end]+tail
    return result


def verify(data):
    data = bytes(data)
    end, cd = eocd(data)
    if cd < 32 or data[cd-16:cd] != MAGIC:
        raise ValueError('No APK v2 signing block')
    size = struct.unpack_from('<Q',data,cd-24)[0]
    start = cd-size-8
    if start < 0 or struct.unpack_from('<Q',data,start)[0] != size:
        raise ValueError('Invalid signing block size')
    blocks, pos = {}, start+8
    while pos < cd-24:
        length = struct.unpack_from('<Q',data,pos)[0]
        if length < 4 or pos+8+length > cd-24:
            raise ValueError('Invalid signing block entry')
        ident = struct.unpack_from('<I',data,pos+8)[0]
        if ident in blocks:
            raise ValueError('Duplicate signing block entry')
        blocks[ident] = data[pos+12:pos+8+length]
        pos += 8+length
    if pos != cd-24 or V2_ID not in blocks:
        raise ValueError('APK v2 entry missing')
    signers, stop = read_lp(blocks[V2_ID])
    signer, signer_stop = read_lp(signers)
    if stop != len(blocks[V2_ID]) or signer_stop != len(signers):
        raise ValueError('Verifier expects exactly one signer')
    signed, pos = read_lp(signer)
    signatures, pos = read_lp(signer,pos)
    public, pos = read_lp(signer,pos)
    if pos != len(signer):
        raise ValueError('Trailing signer data')
    record, stop = read_lp(signatures)
    signature, record_stop = read_lp(record,4)
    if stop != len(signatures) or record_stop != len(record):
        raise ValueError('Verifier expects one signature')
    if struct.unpack_from('<I',record)[0] != ALGORITHM:
        raise ValueError('Verifier expects v2 RSA PKCS1/SHA-256')
    key = serialization.load_der_public_key(public)
    if not isinstance(key,rsa.RSAPublicKey):
        raise ValueError('Verifier expects an RSA public key')
    try:
        key.verify(signature,signed,padding.PKCS1v15(),hashes.SHA256())
    except InvalidSignature as exc:
        raise ValueError('APK RSA signature verification failed') from exc
    digests, pos = read_lp(signed)
    certificates, pos = read_lp(signed,pos)
    attributes, pos = read_lp(signed,pos)
    if pos != len(signed) or attributes:
        raise ValueError('Unexpected signed attributes')
    record, stop = read_lp(digests)
    expected, record_stop = read_lp(record,4)
    if stop != len(digests) or record_stop != len(record) or struct.unpack_from('<I',record)[0] != ALGORITHM:
        raise ValueError('Invalid digest record')
    certificate, stop = read_lp(certificates)
    if stop != len(certificates):
        raise ValueError('Verifier expects one certificate')
    cert = x509.load_der_x509_certificate(certificate)
    if cert.public_key().public_bytes(serialization.Encoding.DER,
                                     serialization.PublicFormat.SubjectPublicKeyInfo) != public:
        raise ValueError('Certificate/public-key mismatch')
    # Independently stream the protected digest instead of calling digest().
    tail = bytearray(data[end:])
    struct.pack_into('<I',tail,16,start)
    parts = [memoryview(data)[:start], memoryview(data)[cd:end], memoryview(tail)]
    count = sum((len(part)+CHUNK-1)//CHUNK for part in parts)
    top = hashlib.sha256(b'\x5a'+struct.pack('<I',count))
    for part in parts:
        for pos in range(0,len(part),CHUNK):
            piece = part[pos:pos+CHUNK]
            child = hashlib.sha256(b'\xa5'+struct.pack('<I',len(piece)))
            child.update(piece)
            top.update(child.digest())
    if top.digest() != expected:
        raise ValueError('APK content digest mismatch: archive was modified after signing')
    return {'scheme':'v2', 'algorithm':'RSA PKCS1/SHA-256',
            'certificate_sha256':cert.fingerprint(hashes.SHA256()).hex(),
            'subject':cert.subject.rfc4514_string()}, (public,signed,signature)

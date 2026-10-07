"""Small, read-only DEX parser plus one version-specific compatibility patch.

This is not a Java decompiler. Apktool handles the editable smali project.
Offsets and method IDs are resolved from the DEX tables, never hard-coded.
"""
import hashlib
import struct
import zlib

GAME_PREFIX = 'Lcom/globalfun/adventuretime/free/'
FACTORY = ('Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;'
           '->GetNewSDKInstance(ILandroid/content/Context;)'
           'Lcom/immersion/hapticmediasdk/HapticContentSDK;')
LOAD_METHOD = 'Lcom/immersion/content/EndpointWarp;->loadSharedLibrary()Z'
PATCHED_PREFIX = (0x0012, 0x0112, 0, 0, 0, 0x0139, 3, 0x0011)


def uleb(data, pos):
    value = 0
    for shift in range(0, 35, 7):
        byte = data[pos]
        pos += 1
        value |= (byte & 127) << shift
        if not byte & 128:
            return value, pos
    raise ValueError('Invalid ULEB128 value')


WIDTHS = [None] * 256
for ops, size in [
    ([0x00,0x01,0x04,0x07,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11,
      0x12,0x1d,0x1e,0x21,0x27,0x28], 1),
    ([0x02,0x05,0x08,0x13,0x15,0x16,0x19,0x1a,0x1c,0x1f,0x20,0x22,
      0x23,0x29], 2),
    ([0x03,0x06,0x09,0x14,0x17,0x1b,0x24,0x25,0x26,0x2a,0x2b,0x2c], 3),
    ([0x18], 5), (range(0x2d,0x3e), 2), (range(0x44,0x6e), 2),
    (range(0x6e,0x73), 3), (range(0x74,0x79), 3), (range(0x7b,0x90), 1),
    (range(0x90,0xb0), 2), (range(0xb0,0xd0), 1), (range(0xd0,0xe3), 2),
]:
    for opcode in ops:
        WIDTHS[opcode] = size


class Dex:
    def __init__(self, data):
        self.data = bytes(data)
        if self.data[:8] not in (b'dex\n035\0', b'dex\n037\0', b'dex\n038\0', b'dex\n039\0'):
            raise ValueError('Unsupported DEX version')
        self.verify_integrity()
        self.strings = []
        for i in range(self.u32(56)):
            pos = self.u32(self.u32(60) + i * 4)
            _, pos = uleb(self.data, pos)
            end = self.data.index(0, pos)
            # Enough for descriptors and this APK's names. Modified UTF-8
            # strings used in game content are preserved as original bytes.
            self.strings.append(self.data[pos:end].decode('utf-8', 'replace'))
        self.types = [self.strings[self.u32(self.u32(68) + 4*i)]
                      for i in range(self.u32(64))]
        self.protos = []
        for i in range(self.u32(72)):
            _, result, params = struct.unpack_from('<III', self.data, self.u32(76)+12*i)
            args = [] if not params else [self.types[self.u16(params+4+2*j)]
                                         for j in range(self.u32(params))]
            self.protos.append('(' + ''.join(args) + ')' + self.types[result])
        self.methods = []
        for i in range(self.u32(88)):
            cls, proto, name = struct.unpack_from('<HHI', self.data, self.u32(92)+8*i)
            self.methods.append({'class':self.types[cls], 'name':self.strings[name],
                                 'signature':self.protos[proto]})
        self.defined = []
        self.classes = []
        for i in range(self.u32(96)):
            values = struct.unpack_from('<8I', self.data, self.u32(100)+32*i)
            self.classes.append(self.types[values[0]])
            pos = values[6]
            if not pos:
                continue
            counts = []
            for _ in range(4):
                value, pos = uleb(self.data, pos)
                counts.append(value)
            for _ in range(counts[0]+counts[1]):
                _, pos = uleb(self.data, pos)
                _, pos = uleb(self.data, pos)
            for count in counts[2:]:
                index = 0
                for _ in range(count):
                    delta, pos = uleb(self.data, pos)
                    flags, pos = uleb(self.data, pos)
                    code, pos = uleb(self.data, pos)
                    index += delta
                    self.defined.append({'index':index, 'flags':flags, 'code':code})

    def u16(self, offset):
        return struct.unpack_from('<H', self.data, offset)[0]

    def u32(self, offset):
        return struct.unpack_from('<I', self.data, offset)[0]

    def describe(self, index):
        method = self.methods[index]
        return method['class']+'->'+method['name']+method['signature']

    def find(self, descriptor):
        matches = [m for m in self.defined if self.describe(m['index']) == descriptor]
        if len(matches) != 1:
            raise ValueError('Expected one method: ' + descriptor)
        return matches[0]

    def units(self, method, count):
        return struct.unpack_from('<' + str(count) + 'H', self.data, method['code']+16)

    def verify_integrity(self):
        if len(self.data) < 112 or self.u32(32) != len(self.data):
            raise ValueError('DEX size mismatch')
        if hashlib.sha1(self.data[32:]).digest() != self.data[12:32]:
            raise ValueError('DEX SHA-1 mismatch')
        if zlib.adler32(self.data[12:]) & 0xffffffff != self.u32(8):
            raise ValueError('DEX Adler32 mismatch')

    def instructions(self, offset):
        count, base, pc = self.u32(offset+12), offset+16, 0
        while pc < count:
            value = self.u16(base+2*pc)
            op = value & 255
            if op == 0 and value:
                kind = value >> 8
                if kind == 1:
                    size = 4+2*self.u16(base+2*(pc+1))
                elif kind == 2:
                    size = 2+4*self.u16(base+2*(pc+1))
                elif kind == 3:
                    size = 4+(self.u16(base+2*(pc+1))*self.u32(base+2*(pc+2))+1)//2
                else:
                    raise ValueError('Unknown DEX payload')
            else:
                size = WIDTHS[op]
            if size is None or pc+size > count:
                raise ValueError('Unsupported or truncated DEX instruction')
            yield pc, op, [self.u16(base+2*(pc+j)) for j in range(size)]
            pc += size

    def game_report(self):
        result = {}
        for method in self.defined:
            item = self.methods[method['index']]
            if item['class'].startswith(GAME_PREFIX):
                name = item['class'][1:-1].replace('/', '.')
                result.setdefault(name, []).append({
                    'name':item['name'], 'signature':item['signature'],
                    'native':bool(method['flags'] & 0x100),
                    'code_bytes':self.u32(method['code']+12)*2 if method['code'] else 0,
                })
        return result


def patch_haptics(data):
    dex = Dex(data)
    method = dex.find(FACTORY)
    load_ids = [i for i in range(len(dex.methods)) if dex.describe(i) == LOAD_METHOD]
    if len(load_ids) != 1 or not method['code']:
        raise ValueError('Unexpected haptics factory')
    original = (0x0012, 0x0071, load_ids[0], 0, 0x010a, 0x0139, 3, 0x0011)
    if dex.units(method, 8) != original:
        raise ValueError('The haptics factory is not the expected unmodified 1.2.10 method')
    start = method['code']+18
    patched = bytearray(data)
    struct.pack_into('<4H', patched, start, 0x0112, 0, 0, 0)
    patched[12:32] = hashlib.sha1(patched[32:]).digest()
    struct.pack_into('<I', patched, 8, zlib.adler32(patched[12:]) & 0xffffffff)
    verify_haptics(patched)
    return bytes(patched), {'method':FACTORY, 'instruction_offset':start, 'instruction_bytes':8}


def verify_haptics(data):
    dex = Dex(data)
    factory = dex.find(FACTORY)
    if dex.units(factory, 8) != PATCHED_PREFIX:
        raise ValueError('The factory must retain the compatibility patch (see docs/COMPATIBILITY.md)')
    game_methods = [m for m in dex.defined if dex.methods[m['index']]['class'].startswith(GAME_PREFIX)]
    if not game_methods or any(m['flags'] & 0x100 for m in game_methods):
        raise ValueError('Unexpected native game methods')
    return dex

"""Read binary Android XML and patch only the original minimum SDK integer."""
import struct


def strings(data, pos):
    _, header, _ = struct.unpack_from('<HHI', data, pos)
    count, _, flags, start, _ = struct.unpack_from('<5I', data, pos+8)
    def length(cursor, bits):
        if bits == 8:
            value, cursor = data[cursor], cursor+1
            if value & 128:
                value, cursor = ((value & 127) << 8) | data[cursor], cursor+1
        else:
            value = struct.unpack_from('<H', data, cursor)[0]
            cursor += 2
            if value & 32768:
                value = ((value & 32767) << 16) | struct.unpack_from('<H', data, cursor)[0]
                cursor += 2
        return value, cursor
    pool = []
    for i in range(count):
        cursor = pos+start+struct.unpack_from('<I', data, pos+header+4*i)[0]
        if flags & 256:
            _, cursor = length(cursor, 8)
            size, cursor = length(cursor, 8)
            pool.append(data[cursor:cursor+size].decode('utf-8'))
        else:
            size, cursor = length(cursor, 16)
            pool.append(data[cursor:cursor+size*2].decode('utf-16-le'))
    return pool


def tags(data):
    pool = []
    if data[:2] != b'\x03\x00':
        raise ValueError('Expected a binary Android manifest')
    pos = struct.unpack_from('<H', data, 2)[0]
    while pos < len(data):
        kind, header, size = struct.unpack_from('<HHI', data, pos)
        if size < header or size == 0 or pos+size > len(data):
            raise ValueError('Invalid binary XML chunk')
        if kind == 1:
            pool = strings(data, pos)
        elif kind == 0x102:
            ext = pos+header
            _, name = struct.unpack_from('<II', data, ext)
            start, width, count = struct.unpack_from('<HHH', data, ext+8)
            attributes = {}
            for i in range(count):
                offset = ext+start+i*width
                _, key, raw = struct.unpack_from('<III', data, offset)
                value_type = data[offset+15]
                value = struct.unpack_from('<I', data, offset+16)[0]
                if raw != 0xffffffff:
                    value = pool[raw]
                elif value_type == 3:
                    value = pool[value]
                elif value_type == 0x12:
                    value = bool(value)
                attributes[pool[key]] = {'value':value, 'type':value_type,
                                         'raw':raw, 'offset':offset+16}
            yield pool[name], attributes
        pos += size


def summary(data):
    result = {'permissions':[]}
    for name, attributes in tags(data):
        values = {key:item['value'] for key, item in attributes.items()}
        if name == 'manifest':
            result.update({key:values.get(key) for key in ('package','versionName','versionCode')})
        elif name == 'uses-sdk':
            result['minSdkVersion'] = values.get('minSdkVersion', 1)
            result['targetSdkVersion'] = values.get('targetSdkVersion')
        elif name == 'uses-permission':
            result['permissions'].append(values.get('name'))
    result.setdefault('minSdkVersion', 1)
    result['effective_targetSdkVersion'] = (result.get('targetSdkVersion')
                                          if result.get('targetSdkVersion') is not None
                                          else result['minSdkVersion'])
    return result


def patch_sdk(data):
    offsets = []
    for name, attributes in tags(data):
        if name == 'uses-sdk':
            if 'targetSdkVersion' in attributes:
                raise ValueError('Expected the original APK without targetSdkVersion')
            item = attributes.get('minSdkVersion', {})
            if item.get('value') != 9 or item.get('type') != 0x10 or item.get('raw') != 0xffffffff:
                raise ValueError('Expected minSdkVersion=9 as a typed integer')
            offsets.append(item['offset'])
    if len(offsets) != 1:
        raise ValueError('Expected one uses-sdk element')
    result = bytearray(data)
    struct.pack_into('<I', result, offsets[0], 24)
    return bytes(result)

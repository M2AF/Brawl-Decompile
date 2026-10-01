"""Minimal read-only ELF32-BE section/symbol/relocation analysis, stdlib only."""
from pathlib import Path
import struct
import sys


class Object:
    def __init__(self, path):
        self.path = Path(path)
        self.raw = self.path.read_bytes()
        assert self.raw[:6] == b'\x7fELF\x01\x02', 'Expected ELF32 big endian'
        hdr = dict(zip(('type','machine','version','entry','phoff','shoff','flags','ehsize','phentsize','phnum','shentsize','shnum','shstrndx'),
                       struct.unpack_from('>HHIIIIIHHHHHH', self.raw, 16)))
        self.sections = [dict(zip(('nameidx','type','flags','addr','offset','size','link','info','align','entsize'),
                                 struct.unpack_from('>10I', self.raw, hdr['shoff'] + i * hdr['shentsize'])))
                         for i in range(hdr['shnum'])]
        strings = self.data(self.sections[hdr['shstrndx']])
        for s in self.sections:
            s['name'] = self.string(strings, s['nameidx'])
        self.by_name = {s['name']: s for s in self.sections}
        self.symbols = []
        for section in self.sections:
            if section['type'] != 2: continue
            strings = self.data(self.sections[section['link']])
            for offset in range(section['offset'], section['offset'] + section['size'], section['entsize']):
                name, value, size, info, other, index = struct.unpack_from('>IIIBBH', self.raw, offset)
                self.symbols.append({'name': self.string(strings,name), 'value':value,'size':size,'info':info,'section':index})
        self.relocs = {}
        for section in self.sections:
            if section['type'] not in (4,9): continue
            name=self.sections[section['info']]['name']
            records=[]
            for offset in range(section['offset'],section['offset']+section['size'],section['entsize']):
                addr, info=struct.unpack_from('>II',self.raw,offset)
                addend=struct.unpack_from('>i',self.raw,offset+8)[0] if section['type']==4 else 0
                records.append((addr,info & 255,self.symbols[info >> 8]['name'],addend))
            self.relocs[name]=records

    @staticmethod
    def string(data, at):
        return data[at:data.index(b'\0',at)].decode('utf8',errors='replace')

    def data(self, section):
        if section['type']==8: return bytes(section['size'])
        return self.raw[section['offset']:section['offset']+section['size']]

    def symbols_in(self, name):
        index=self.sections.index(self.by_name[name])
        return sorted((s for s in self.symbols if s['section']==index and s['name']),key=lambda s:s['value'])


if __name__=='__main__':
    for path in sys.argv[1:]:
        obj=Object(path)
        print(path)
        for name in ('.rodata','.data','.bss','.ctors'):
            if name not in obj.by_name: continue
            s=obj.by_name[name]
            print(f'{name} size={s["size"]:#x} align={s["align"]} relocations={len(obj.relocs.get(name,[]))}')
            for sym in obj.symbols_in(name):
                print(f'  {sym["value"]:04x} {sym["size"]:04x} {sym["name"]}')

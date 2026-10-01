#!/bin/bash
# Project compile flags for mo_stage/st_kart/st_kart. Input is compiled as C++ despite the .c suffix.
cd "/c/Users/balla/Documents/Brawl Decompile/brawl"
IN=$(cygpath -w "$1")
OUT=$(cygpath -w "$3")
build/tools/sjiswrap.exe build/compilers/GC/3.0a5.2/mwcceppc.exe -nodefaults -proc gekko -align powerpc -enum int -fp hardware -Cpp_exceptions off -O4,p -inline auto -pragma "cats off" -pragma "warn_notinlined off" -maxerrors 1 -nosyspath -RTTI off -fp_contract off -str reuse -enc SJIS -i include -i build/RSBE01_01/include -DBUILD_VERSION=2 -DVERSION_RSBE01_01 -DMATCHING -Iinclude -Iinclude/lib/PowerPC_EABI_Support/Runtime/Inc -Iinclude/lib/BrawlHeaders/Brawl/Include -Iinclude/lib/BrawlHeaders/nw4r/include -Iinclude/lib/BrawlHeaders/OpenRVL/include -Iinclude/lib/BrawlHeaders/OpenRVL/include/MetroTRK -Iinclude/lib/BrawlHeaders/OpenRVL/include/revolution -Iinclude/lib/BrawlHeaders/OpenRVL/include/RVLFaceLib -Iinclude/lib/BrawlHeaders/OpenRVL/include/stl -Iinclude/lib/BrawlHeaders/utils/include -RTTI on -ipa file -sdata 0 -sdata2 0 -lang=c++ -lang=c++ -c "$IN" -o "$OUT"

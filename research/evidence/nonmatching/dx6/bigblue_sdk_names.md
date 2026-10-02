# Local SDK import naming evidence
8015C238 (84 bytes) matches the NW4R ut::detail::LinkListImpl destructor:
null-object guard; sentinel at +4; unlink all nodes updating size at +0;
zero each node next/prev; conditional operator delete on positive dtor flag;
return original object. The template's emitted destructor imports that ABI.
8015C2BC (48 bytes) is Erase(Iterator): iterator parameter passed by reference,
loads node from it, unlinks until its saved successor, decrements size,
zeros detached links, returns successor (Iterator). This is the exact SDK
signature used by PopFront, confirmed by the typed DXGreens implementation.
Both names changed only in isolated codex/dx config. Old labels have no
project source declarations. Standard SDK layout verified from local header.
Target instructions remain only in private evidence; this note has no asm.

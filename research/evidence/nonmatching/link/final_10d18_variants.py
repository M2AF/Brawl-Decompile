old = """            int zero = 0;
            catches.vf2C(zero, zero);"""
VARIANTS = [
 ("bool_local", [(old, """            bool zero = false;
            catches.vf2C(zero, zero);""")]),
 ("unsigned_local", [(old, """            unsigned zero = 0;
            catches.vf2C(zero, zero);""")]),
 ("bool_arguments", [(old, "            catches.vf2C(false, false);")]),
 ("short_local", [(old, """            short zero = 0;
            catches.vf2C(zero, zero);""")]),
 ("inline_vtable_null", [(old, "            catches.vf2C(NULL, NULL);")]),
 ("enum_local", [(old, """            enum { zero = 0 };
            catches.vf2C(zero, zero);""")]),
]

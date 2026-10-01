B = "inline float fabsf_(float x) { return __fabsf(x); }\ninline float abs(float x) { return fabsf_(x); }"
VARIANTS = [
    ("dbl_intrinsic", [(B, "inline float abs(float x) { return __fabs(x); }")]),
    ("static_inline", [(B, "static inline float abs(float x) { return __fabsf(x); }")]),
    ("template", [(B, "template <typename T> inline T abs(T x) { return __fabsf(x); }")]),
    ("local_var", [(B, "inline float abs(float x) { float r = __fabsf(x); return r; }")]),
    ("ternary", [(B, "inline float abs(float x) { return x < 0.0f ? -x : x; }")]),
    ("ternary_gt", [(B, "inline float abs(float x) { return x > 0.0f ? x : -x; }")]),
]

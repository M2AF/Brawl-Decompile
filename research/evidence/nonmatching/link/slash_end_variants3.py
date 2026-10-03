anchor = "void ftLinkStatusUniqProcessSpecialRSlashEnd::initStatus"
expr = "    float result = ((float)count / (float)maxCount) * (power - 1.0f) + 1.0f;"
VARIANTS = [
 ("inline_multiply", [(anchor, "inline float linkSlashProduct(float x, float y) { return x * y; }\n\n"+anchor), (expr, "    float result = linkSlashProduct((float)count / (float)maxCount, power - 1.0f) + 1.0f;")]),
 ("inline_multiply_reversed", [(anchor, "inline float linkSlashProduct(float x, float y) { return y * x; }\n\n"+anchor), (expr, "    float result = linkSlashProduct(power - 1.0f, (float)count / (float)maxCount) + 1.0f;")]),
 ("inline_scale", [(anchor, "inline float linkSlashScale(float power, float ratio) { return ratio * (power - 1.0f) + 1.0f; }\n\n"+anchor), (expr, "    float result = linkSlashScale(power, (float)count / (float)maxCount);")]),
 ("inline_whole", [(anchor, "inline float linkSlashScale(int count, int maxCount, float power) { return ((float)count / (float)maxCount) * (power - 1.0f) + 1.0f; }\n\n"+anchor), (expr, "    float result = linkSlashScale(count, maxCount, power);")]),
]

old = '''    float delta = power - 1.0f;
    float ratio = (float)count / (float)maxCount;
    ratio *= delta;
    float result = 1.0f + ratio;'''
VARIANTS = [
    ('reuse_power', [(old, '''    power -= 1.0f;
    power = ((float)count / (float)maxCount) * power;
    float result = 1.0f + power;''')]),
    ('ratio_delta', [(old, '''    float delta = power - 1.0f;
    float result = ((float)count / (float)maxCount) * delta + 1.0f;''')]),
    ('one_local', [(old, '''    float one = 1.0f;
    float delta = power - one;
    float ratio = (float)count / (float)maxCount;
    ratio *= delta;
    float result = one + ratio;''')]),
    ('result_compound', [(old, '''    float result = power - 1.0f;
    result *= (float)count / (float)maxCount;
    result += 1.0f;''')]),
    ('ratio_first', [(old, '''    float ratio = (float)count / (float)maxCount;
    float delta = power - 1.0f;
    float result = 1.0f + ratio * delta;''')]),
    ('power_compound', [(old, '''    power -= 1.0f;
    power *= (float)count / (float)maxCount;
    float result = power + 1.0f;''')]),
]

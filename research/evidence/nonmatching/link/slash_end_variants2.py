old = '''    float delta = power - 1.0f;
    float ratio = (float)count / (float)maxCount;
    ratio *= delta;
    float result = 1.0f + ratio;'''
VARIANTS = []
for name, expr in [
 ('ratio_plus', '((float)count / (float)maxCount) * (power - 1.0f) + 1.0f'),
 ('delta_plus', '(power - 1.0f) * ((float)count / (float)maxCount) + 1.0f'),
 ('nested_cast', '1.0f + (float)(((float)count / (float)maxCount) * (power - 1.0f))'),
]:
 VARIANTS.append((name, [(old, '    float result = ' + expr + ';')]))
VARIANTS.extend([
 ('delta_alias', [(old, '''    float delta = power - 1.0f;
    float& factor = delta;
    float result = 1.0f + ((float)count / (float)maxCount) * factor;''')]),
 ('ratio_alias', [(old, '''    float delta = power - 1.0f;
    float ratio = (float)count / (float)maxCount;
    float& value = ratio;
    float result = 1.0f + value * delta;''')]),
 ('one_result', [(old, '''    float one = 1.0f;
    float result = power - one;
    float ratio = (float)count / (float)maxCount;
    result = ratio * result;
    result = one + result;''')]),
 ('compound_outer', [(old, '''    float result = 1.0f;
    result += ((float)count / (float)maxCount) * (power - result);''')]),
 ('neg_sub', [(old, '''    float result = 1.0f - ((float)count / (float)maxCount) * (1.0f - power);''')]),
])

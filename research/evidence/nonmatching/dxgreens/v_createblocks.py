B = "        float range = data->m_spawnIntervalRange * data->m_spawnRateByCount[getTallestColumn()];\n        m_spawnTimer = data->m_spawnIntervalMin + randf() * range;\n    }\n}\n\nvoid stDxGreens::createBlock("
VARIANTS = [
    ("range_first", [(B, B.replace("randf() * range", "range * randf()"))]),
    ("inline_expr", [(B, B.replace("        float range = data->m_spawnIntervalRange * data->m_spawnRateByCount[getTallestColumn()];\n        m_spawnTimer = data->m_spawnIntervalMin + randf() * range;",
                                   "        m_spawnTimer = data->m_spawnIntervalMin + randf() * (data->m_spawnIntervalRange * data->m_spawnRateByCount[getTallestColumn()]);"))]),
    ("rate_first", [(B, B.replace("data->m_spawnIntervalRange * data->m_spawnRateByCount[getTallestColumn()]", "data->m_spawnRateByCount[getTallestColumn()] * data->m_spawnIntervalRange"))]),
]

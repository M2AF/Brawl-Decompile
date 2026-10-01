B = """        stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
        if (data) {
            for (u8 column = 0; column < 6; column++) {
                stDxGreensBlock* blocks = m_blocks[column];
                for (u8 slot = 0; slot < 5; slot++) {
                    stDxGreensBlock* block = &blocks[slot];
                    block->m_from = m_blockPositions[column][slot];
                    block->m_to = m_blockPositions[column][slot];"""
V2 = """        stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
        if (data) {
            for (u8 column = 0; column < 6; column++) {
                stDxGreensBlock* blocks = m_blocks[column];
                Vec3f* positions = m_blockPositions[column];
                for (u8 slot = 0; slot < 5; slot++) {
                    stDxGreensBlock* block = &blocks[slot];
                    block->m_from = positions[slot];
                    block->m_to = positions[slot];"""
V3 = """        stDxGreensBlock* blocks;
        Vec3f* positions;
        stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
        if (data) {
            for (u8 column = 0; column < 6; column++) {
                blocks = m_blocks[column];
                positions = m_blockPositions[column];
                for (u8 slot = 0; slot < 5; slot++) {
                    stDxGreensBlock* block = &blocks[slot];
                    block->m_from = positions[slot];
                    block->m_to = positions[slot];"""
V4 = """        stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
        if (data) {
            u8 column;
            u8 slot;
            stDxGreensBlock* block;
            for (column = 0; column < 6; column++) {
                stDxGreensBlock* blocks = m_blocks[column];
                Vec3f* positions = m_blockPositions[column];
                for (slot = 0; slot < 5; slot++) {
                    block = &blocks[slot];
                    block->m_from = positions[slot];
                    block->m_to = positions[slot];"""
VARIANTS = [("row_ptrs", [(B, V2)]), ("ptrs_first", [(B, V3)]), ("counters_first", [(B, V4)])]

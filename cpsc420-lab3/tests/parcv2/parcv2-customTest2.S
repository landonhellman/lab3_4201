//=========================================================================
// parcv2-customTest2.S
//=========================================================================

#include "parc-macros.h"
        TEST_PARC_BEGIN

        addiu $29, $0, 101

        addiu $2,  $0, 22
        addiu $3,  $0, 3

        divu  $5,  $2, $3
        ori   $5,  $0, 2

        addu  $6,  $5, $0
        addiu $7,  $0, 2
        bne   $6,  $7, _fail

        addiu $8,  $0, 1
        addu  $9,  $6, $8      # 2 + 1 = 3
        addiu $10, $0, 3
        bne   $9,  $10, _fail

        j     _pass
        nop

        TEST_PARC_END
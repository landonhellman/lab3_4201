//=========================================================================
// parcv2-customTest1.S
//=========================================================================

#include "parc-macros.h"
        TEST_PARC_BEGIN

        addiu $29, $0, 201

        addiu $2,  $0, 22
        addiu $3,  $0, 3

        divu  $5,  $2, $3
        remu  $6,  $2, $3

        addiu $7,  $0, 7
        bne   $5,  $7, _fail

        addiu $8,  $0, 1
        bne   $6,  $8, _fail

        addu  $9,  $5, $6
        addiu $10, $0, 8
        bne   $9,  $10, _fail

        j     _pass
        nop

        TEST_PARC_END
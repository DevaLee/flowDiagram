//
//  asm.s
//  Demo
//
//  Created by bel on 2021/5/31.
//


.text
.global _funcA, _sum

_funcA:
    stp x29, x30, [sp, #-0x10]!
   // sub sp, sp, #0x10
   // stp x29, x30, [sp]
    bl _sum
    //ldp x29, x30, [sp]
    //add sp, sp, #0x10
    ldp x29, x30, [sp], #0x10
    ret
    
_sum:
    add x0, x0, x1
    ret

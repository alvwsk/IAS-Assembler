.org 0x000 

inicio:
    LOAD M(var_x) 
    ADD M(var_y) 
    STOR M(var_sum)
    
    LOAD M(var_x)
    SUB M(var_y)
    STOR M(var_sub)

dados:
.org 0x100
var_x:
    .word 0000000007
.org 0x101
var_y:
    .word 0000000001

.org 0x110
var_sum:
.org 0x111
var_sub:

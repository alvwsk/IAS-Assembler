.org 0x000

inicio:

LOAD M(var_a)
ADD M(var_b)
STOR M(var_sum_1)

LOAD M(var_c)
ADD M(var_d)
STOR M(var_sum_2)

LOAD M(var_sum_1)
SUB M(var_sum_2)
STOR M(var_a)

dados:
    
.org 0x200                     # Variaveis a, b, c, d estão nos endereços           
var_a:                         # 200, 201, 202 e 203 respectivamente
    .word 0000000004           # resultado de a + b será guardado em 204
.org 0x201                     # resultado de c + d será guardado em 205
var_b:                         # a subtração das somas será guardado em a    
    .word 0000000003
.org 0x202
var_c: 
    .word 0000000002
.org 0x203
var_d: 
    .word 0000000001

.org 0x204
var_sum_1:
    .word 0000000000
.org 0x205
var_sum_2:
    .word 0000000000

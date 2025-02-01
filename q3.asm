.org 0x000

inicio:

LOAD MQ, M(n1)
MUL M(p1)
LOAD MQ
STOR M(var_1)

LOAD MQ, M(n2)
MUL M(p2)
LOAD MQ
STOR M(var_2)

LOAD MQ, M(n3)
MUL M(p3)
LOAD MQ
STOR M(var_3)

LOAD M(var_1)
ADD M(var_2)
ADD M(var_3)
STOR M(result)

LOAD M(p1)
ADD M(p2)
ADD M(p3)
STOR M(var_4)

LOAD M(result)
DIV M(var_4)
LOAD MQ
STOR M(result)

dados:

.org 0x100
result: 
    .word 0000000000

.org 0x300
var_1: 
    .word 0000000000

.org 0x301
var_2: 
    .word 0000000000

.org 0x302
var_3: 
    .word 0000000000

.org 0x303
var_4:
    .word 0000000000
    
#----------------NOTAS---------------

.org 0x101
n1:
    .word 0000000005

.org 0x102
n2:
    .word 0000000006

.org 0x103
n3:
    .word 0000000007

#-----------------PESOS---------------

.org 0x201
p1:
    .word 0000000001

.org 0x202
p2:
    .word 0000000002

.org 0x203
p3:
    .word 0000000003
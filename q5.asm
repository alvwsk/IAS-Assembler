            .org 0x000
START:      LOAD    M(b)         # Carrega o valor de b
            SUB     M(um)        # Calcula b - 1
            JUMP+   M(CONTINUE)  # Se (b - 1) ≥ 0 então b ≥ 1 e continua
            JUMP    M(END)       # Senão (b era 0) termina
CONTINUE:   LOAD    M(produto)   # Recupera o produto acumulado
            ADD     M(a)         # Adiciona a
            STOR    M(produto)   # Armazena o novo produto
            LOAD    M(b)         # Recupera o valor atual de b
            SUB     M(um)        # Decrementa b
            STOR    M(b)         # Atualiza b
            JUMP    M(START)        # Repete o loop
END:        

            .org 0x200
a:          .word   0000000005   # Exemplo: a = 5
b:          .word   0000000003   # Exemplo: b = 3
produto:    .word   0000000000   # Inicialmente zero

            .org 0x300
um:         .word   0000000001   #Constante “1”

            .org 0x000
INICIO:     LOAD M(tamanho)        
            SUB M(incremento)      
            STOR M(tamanho)        
            JUMP+ M(PROXIMO)       
            JUMP M(fim)            

PROXIMO:    LOAD M(ponteiro)       
            STOR M(endereco_atual) 
            LOAD M(endereco_atual) 
            ADD M(incremento)      
            STOR M(ponteiro)       

            LOAD M(endereco_atual) 
            DIV M(verificador)     
            MUL M(verificador)     
            SUB M(endereco_atual)  
            JUMP+ M(NAO_SOMA)      

            LOAD M(endereco_atual) 
            ADD M(soma)           
            STOR M(soma)          

NAO_SOMA:   JUMP M(INICIO)        

fim:                        

            .org 0x100
tamanho:    .word 0000000004    
soma:       .word 0000000000    

            .org 0x102
            .word 0000000001    
            .word 0000000002    
            .word 0000000003    
            .word 0000000004    

            .org 0x300
incremento:      .word 0000000001    
ponteiro:        .word 0x102         
verificador:     .word 0000000002    
endereco_atual:  .word 0000000000    

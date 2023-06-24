
.data
  message: .asciiz "Digite o primeiro numero: "
  messagem2: .asciiz "Digite o segundo numero: "

.text
  main:
  
    ## mostra 
    addi $v0, $zero, 4
    la $a0, message
    syscall
    
    
    ## lendo entrada do usuario
    addi $v0, $zero, 5
    syscall
    add $s1, $zero , $v0
    
    
    
    ## mostra 
    addi $v0, $zero, 4
    la $a0, messagem2
    syscall
    
    ## lendo entrada do usuario
    addi $v0, $zero, 5
    syscall
    add $s2, $zero , $v0
  
    
   ## Dividi e multiplica os numeros 
   srl  $s1, $s1,1    # dividi por 2
   sll  $s2, $s2,1    # Multiplica por 2
   andi $s3, $s1, 1   #and
   not  $s3, $s3      #inverte 
   addi $s3, $s3, 1   # se impar 11111 se par 0000
   and  $s4, $s3, $s2 # se impar o promprio numero, se par contrario
   
   
   srl  $s1, $s1,1     # dividi por 2
   sll  $s2, $s2,1     # Multiplica por 2
   andi $s3, $s1, 1    #and
   not  $s3, $s3       #inverte 
   addi $s3, $s3 , 1   #soma 1
   and  $s3 , $s3, $s2
   add  $s4 , $s4 , $s3
   
   srl  $s1, $s1,1     # dividi por 2
   sll  $s2, $s2,1     # Multiplica por 2
   andi $s3, $s1, 1    #and
   not  $s3, $s3       #inverte 
   addi $s3, $s3 , 1   #soma 1
   and  $s3 , $s3, $s2
   add  $s4 , $s4 , $s3
   
   srl  $s1, $s1,1    # dividi por 2
   sll  $s2, $s2,1    # Multiplica por 2
   andi $s3, $s1, 1   #and
   not  $s3, $s3      #inverte 
   addi $s3, $s3 , 1  #soma 1
   and  $s3 , $s3, $s2
   add  $s4 , $s4 , $s3
   

  #imprime o resultado
  addi $v0, $zero, 1   # 1 - imprimindo inteiro
  add  $a0, $zero, $s4  
  syscall
   
   
                                                                                                                                                                                                                                                                                                                                                                                #and e not 
  
   
   


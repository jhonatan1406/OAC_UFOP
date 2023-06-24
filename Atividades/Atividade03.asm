.data
  word : .asciiz "mussum"
  parada : .asciiz " Não é palindro "
  verdade : .asciiz " é um palindro "
.text
  main:

  la $t0 , word # busca a palavra 
  addi $t1,$t0,5 # busca a ultima palavra 
  
  while:
  
  lb $s0 , 0($t0) # pela primeira  palavra 
  lb $s1 , 0($t1) # pega a primeira palavra 

  slt $s2, $t0,$t1 # A < B  
  beq $s2, $zero , saida #compara se é igual, if ñ entrar na saida
  
  bne $s0 , $s1 , palindro
  
  addi $t0,$t0,1 # adiocona 1
  subi $t1,$t1,1 #diminui 1
  j  while 
   
   
   
 saida:
  addi $v0 , $zero , 4
  la $a0, verdade
  syscall 
  j final
  
  
 palindro:
 addi $v0 , $zero, 4
 la $a0, parada 
 syscall
 final:
 
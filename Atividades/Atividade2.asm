.data
  message1: .asciiz "Primeiro numero: "
  message2: .asciiz "Segundo numero: "
  resultado: .asciiz "Resultado: "
.text 
  addi $v0, $zero, 4  # 4 imprimir uma string
  la $a0, message1  # a0 argumento de funcao
  syscall
  addi $v0, $zero, 5  # 5 ler do teclado um inteiro
  syscall
  add $s0, $zero, $v0 # s0 = 0 + v0
  
  addi $v0, $zero, 4  # 4 imprimir uma string
  la $a0, message2   # a0 argumento de funcao
  syscall
  addi $v0, $zero, 5  # 5 ler do teclado um inteiro
  syscall
  add $s1, $zero, $v0 # s0 = 0 + v0
  
  srl $s0, $s0, 1 # /2
  sll $s1, $s1, 1 # *2
  andi $s2, $s0, 1 # $s = $s0 AND 1
  not $s2, $s2 # Intervete
  addi $s2, $s2, 1 # Soma 1
  and $s3, $s2, $s1
  
  srl $s0, $s0, 1 # /2
  sll $s1, $s1, 1 # *2
  andi $s2, $s0, 1 # $s = $s0 AND 1
  not $s2, $s2 # Intervete
  addi $s2, $s2, 1 # Soma 1
  and $s2, $s2, $s1
  add $s3, $s3, $s2
  
  srl $s0, $s0, 1 # /2
  sll $s1, $s1, 1 # *2
  andi $s2, $s0, 1 # $s2 = $s0 AND 1
  not $s2, $s2 # Intervete
  addi $s2, $s2, 1 # Soma 1
  and $s2, $s2, $s1
  add $s3, $s3, $s2
  
  srl $s0, $s0, 1 # /2
  sll $s1, $s1, 1 # *2
  andi $s2, $s0, 1 # $s = $s0 AND 1
  not $s2, $s2 # Intervete
  addi $s2, $s2, 1 # Soma 1
  and $s2, $s2, $s1
  add $s3, $s3, $s2
  
  addi $v0, $zero, 4  # 4 imprimir uma string
  la $a0, resultado   # a0 argumento de funcao
  syscall 
  addi $v0, $zero, 1 # 1 = imprimir um inteiro
  add $a0, $zero, $s3      # load word  ## a0
  syscall
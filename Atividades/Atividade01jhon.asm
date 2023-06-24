.data
  message: .asciiz "Digite o valor de x:"
  zeroFloat: .float 0.0  ### definir o zero em float
  t1 : .float 2.0 
  t2: .float  24.0
  t3: .float  720.0
  termo1: .float 1.0
.text
  lwc1 $f4, zeroFloat
  #lwc1 $f14, t2
  #lwc1 $f14, t3

  addi $v0, $zero, 4 # imprimir string
  la $a0, message
  syscall # print memoria[ $a0 ]
  
  addi $v0, $zero, 6  # 6 para ler um float
  syscall    ## $f0 = input()
  

  mul.s $f20, $f0, $f0
  lwc1 $f14, t1
  div.s $f24, $f20, $f14
  
  
  mul.s $f10, $f0, $f0
  mul.s $f2, $f0, $f0
  mul.s $f4, $f10, $f2
  lwc1 $f14, t2
  div.s $f26, $f4, $f14

  mul.s $f6, $f0, $f0
  mul.s $f8, $f0, $f0
  mul.s $f16, $f0, $f0
  mul.s $f18, $f6, $f8
  mul.s $f22, $f18, $f16
  lwc1 $f14, t3
  div.s $f30, $f22, $f14
  
  addi $v0, $zero, 2 #imprimir float 
  lwc1 $f14, termo1
  sub.s $f12, $f14, $f24
  add.s $f12, $f12, $f26
  sub.s $f12, $f12, $f30
  syscall #imprimi f12
   
  

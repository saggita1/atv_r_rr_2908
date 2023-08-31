.data
	saida: .asciiz  "J = "

.text
	# j = $t0 e i = $t1
	
	# definindo j
	li $t0, 12
	
	# recebendo i
	li $v0, 5
	syscall
	move $t1, $v0
	
	 
	bgt $t0, $t1, true # se o $t0 for maior que $t1, ir para true
	
	# ELSE
	li $t2, 8 # valor a ser multiplicado
	li $t3, 6 # valor a ser multiplicado
	mul $t0, $t0, $t3 # multiplica $t0(j) por 6
	mul $t1, $t1, $t2 # multiplica $t1(i) por 8
	addi $t1, $t1, 12 # adiciona 12 ao $t1(i)
	add $t0, $t0, $t1 # adicionando $t1(i) ao $t0(j)
	
	# print saida
	li $v0, 4
	la $a0, saida
	syscall
	
	# printando o novo J
	li $v0, 1
	move $a0, $t0
	syscall
	
	
	li $v0, 10 # encerrando programa
	syscall
	
true:
	add $t0, $t1, $t1 # "multiplicando" $t1 por 2
	addi $t0, $t0, 8 # adicionando 8 após multiplicar
	
	# print saida
	li $v0, 4
	la $a0, saida
	syscall
	
	# printando novo $t0(j)
	li $v0, 1
	move $a0, $t0
	syscall
	
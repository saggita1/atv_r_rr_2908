.data
	saida: .ascii "t = "
	vazio: .asciiz ""
.text
	li $t0, 12
	li $t1, 5
	
	# soma
	add $t1, $t1, $t0
	
	# soma
	add $t0, $t0, $t0
	
	# sub
	sub $t2, $t0, $t1
	
	# imprimir stirng
	li $v0, 4
	la $a0, saida
	syscall
	
	# imprimir numero
	li $v0, 1
	move $a0, $t2
	syscall
	
	# imprimir stirng
	li $v0, 4
	la $a0, vazio
	syscall
	
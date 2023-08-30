.text
	# j = $t0 e i = $t1
	
	# definindo j
	li $t0, 12
	
	# recebendo i
	li $v0, 5
	syscall
	move $t1, $v0
	
	 
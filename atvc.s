.data
saida: .asciiz "s = "
.text
main:
	# $t0 = i, $t1 = j, $t2 = s
	li $t0, 0 # contador
	li $t1, 5 # j = 5
	li $t2, 1 # s = 1
loop:
	beq $t0, $t1, end # a condição é i < j, quando forem iguais, se encerra o loop e vai pro end
	add $t2, $t2, $t0 # s = s + i
	addi $t0, $t0, 1 # aumentamos o contador em 1
	j loop # repetimos o loop
end:
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
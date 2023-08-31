.data
	v1: .word 0
	v2: .float 0.0
	saidav1: .asciiz "v1 = "
	saidav2: .asciiz ", v2 = "
	
.text
.globl main
main:
	# recebendo v1
	li $v0, 5
	syscall
	sw $v0, v1 # mandando pro meu v1 na memória
	
	# recebendo v2
	li $v0, 6
	syscall
	swc1 $f0, v2 # mandando pro meu v2 na memória
	
	# impressão
	# imprimindo primeira string
	li $v0, 4
	la $a0, saidav1
	syscall
	
	# print do v1
	li $v0, 1
	lw $a0, v1 # load word da memória, meu v1 está lá
	syscall
	
	# imprimindo segunda string
	li $v0, 4
	la $a0, saidav2
	syscall
	
	# print do v2
	li $v0, 2
	lwc1 $f12, v2 # carregando meu float v2 da memória
	syscall
	
	# encerrando programa
	li $v0, 10
	syscall
.data
	soma2: .double 0.0
	numerador: .double 1.0
	denominador: .double 3.0
	espaco: .asciiz ""
.text
.globl main
main:
	li $t0, 0 # i = 0 CONTADOR
	l.d $f2, soma2 # carregando float
	li $t1, 30 # 10 * 3 é a condição de parada
	l.d $f4, numerador # carregando 1 no numerador
	l.d $f6, denominador # carregando 3 no denominador
 	
loop:
	bge $t0, $t1, end # se o i for maior ou igual à 30, encerrar loop
	div.d $f8, $f4, $f6 # 1 / 3 e salvando num registrador temporario
	add.d $f2, $f2, $f8 # adicionando a divisao ao $f2(soma2)
	
	# contador
	addi $t0, $t0, 1 # adiciona 1 ao contador
	
	j loop # reinicia o loop
end:
	# print do numero
	li $v0, 3
	mov.d $f12, $f2
	syscall
	# print do espaço
	li $v0, 4
	la $a0, espaco
	syscall
	
	# encerrando programa
	li $v0, 10
	syscall
	
	
	
	
	

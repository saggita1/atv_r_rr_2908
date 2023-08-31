.data
array: .word 10, 24, 31, 47, 5 # Define um vetor de 5 números
.text
main:
    la $t0, array # Carrega o endereço do vetor na memória em $t0
    lw $t1, 0($t0) # Carrega o primeiro elemento do vetor em $t1
    li $t2, 1 # Inicializa um contador de loop em $t2 com 1
    li $t3, 5 # Inicializa o tamanho do vetor em $t3 com 5
loop:
    beq $t2, $t3, end # Verifica se o contador é igual ao tamanho do vetor e pula para o final se for verdadeiro
    li $t7, 4 # valor 4 para ser multiplicado
    mul $t4, $t2, $t7 # Calcula o deslocamento do elemento atual do vetor
    add $t4, $t4, $t0 # Calcula o endereço do elemento atual do vetor
    lw $t5, 0($t4) # Carrega o elemento atual do vetor em $t5
    slt $t6, $t1, $t5 # Verifica se o valor atual é maior que o valor máximo atual armazenado em $t1
    beqz $t6, skip # Pula para a próxima iteração do loop se o valor atual não for maior que o valor máximo atual
    move $t1, $t5 # Atualiza o valor máximo com o valor atual
skip:
    addi $t2, $t2, 1 # Incrementa o contador de loop
    j loop # Repete o loop
end:
    li $v0, 1 # para print de inteiro, é 1 no $v0
    move $a0, $t1 # colocando o maior valor em $a0
    syscall
    
    # encerrando programa
    li $v0, 10
    syscall
    
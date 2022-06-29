# aumentar o tempo do "time" no simulador

lw x20, a # colocando cada vogal em um registrador
lw x21, e
lw x22, i
lw x23, o
lw x24, u
lw x25, space

loop:
    lb x26, 1025(x0) # fazer as comparaçoes das letras com as vogais pegando os caracteres do teclado
    beq x26, x25, printar
    beq x26, x20, sum
    beq x26, x21, sum
    beq x26, x22, sum
    beq x26, x23, sum
    beq x26, x24, sum
jal x27, loop

sum: 
    addi x28, x28, 1 # somar as vogais
jal x27, loop

printar: 
    addi x26, x28, 48  # printar a soma das vogais
    sb x26, 1024(x0) # 1024 é para a escrita de um caracter
halt

a: .word 97 # de acordo com a tabela ascii
e: .word 101
i: .word 105
o: .word 111
u: .word 117
space: .word 32 # dar espaço para printar o resultado
# implementando todos os fatoriais até o 9
# não printei o resultado pois os monitores falaram que não precisava
# aumentar o tempo do "time" no simulador

lw x17, zerar # zerando
lw x18, zerar
lw x19, f7
lw x20, f8
lw x21, f9

ler_os_num: 
lw x24, max_6 # o max de algarismos que o número pode ter é 6
beq x17, x24, end # se tiver mais acaba o código

lb x15, 1025(x0) # 1025 é para ler um caracter (numero do teclado)

lw x24, zero 
beq x15, x24, f0 # compara e chama o fatorial de 0

lw x24, um
beq x15, x24, f1 # compara e chama o fatorial de 1

lw x24, dois
beq x15, x24, f2 # compara e chama o fatorial de 2

lw x24, tres
beq x15, x24, f3 # compara e chama o fatorial de 3

lw x24, quatro
beq x15, x24, f4 # compara e chama o fatorial de 4

lw x24, cinco
beq x15, x24, f5 # compara e chama o fatorial de 5

lw x24, seis
beq x15, x24, f6 # compara e chama o fatorial de 6

lw x24, sete
beq x15, x24, f7 # compara e chama o fatorial de 7

lw x24, oito
beq x15, x24, f8 # compara e chama o fatorial de 8

lw x24, nove
beq x15, x24, f9 # compara e chama o fatorial de 9

lw x24, space # quando der espaço vai para o fim do codigo
beq x15, x24, end

jal x25, ler_os_num

f0:
addi x17, x17, 1
addi x18, x18, 1
jal x25, ler_os_num

f1:
addi x17, x17, 1
addi x18, x18, 1
jal x25, ler_os_num

f2:
addi x17, x17, 1
addi x18, x18, 2
jal x25, ler_os_num

f3:
addi x17, x17, 1
addi x18, x18, 6
jal x25, ler_os_num

f4:
addi x17, x17, 1
addi x18, x18, 24
jal x25, ler_os_num

f5:
addi x17, x17, 1
addi x18, x18, 120
jal x25, ler_os_num

f6:
addi x17, x17, 1
addi x18, x18, 720
jal x25, ler_os_num

f7:
addi x17, x17, 1
add x18, x18, x19 # como é muito grande estava dando problema o calculo ai ja coloquei em um registrador o resultado
jal x25, ler_os_num

f8:
addi x17, x17, 1
add x18, x18, x20 # como é muito grande estava dando problema o calculo ai ja coloquei em um registrador o resultado
jal x25, ler_os_num

f9:
addi x17, x17, 1
add x18, x18, x21 # como é muito grande estava dando problema o calculo ai ja coloquei em um registrador o resultado
jal x25, ler_os_num

end: 
halt

f7: .word 5040
f8: .word 40320
f9: .word 362880

zerar: .word 0
max_6: .word 6

zero: .word 48 # todos de acordo com a tabela ascii
um: .word 49
dois: .word 50
tres: .word 51
quatro: .word 52
cinco: .word 53
seis: .word 54
sete: .word 55
oito: .word 56
nove: .word 57

space: .word 32
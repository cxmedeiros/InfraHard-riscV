# só aceita palavra em maiusculo
# dar espaço no final das duas palavras e entre elas
# aumentar o tempo do "time" no simulador

primeira_palavra:
addi x10, x0, 0 # registrador da pontuacao do primeiro jogador (palavra 1)
jal x11, loop

segunda_palavra:
addi x10, x25, 0 # finalizando a pontuação do primeiro jogador
addi x12, x0, 0 # registrador da pontuacao do segundo jogador (palavra 2)
addi x25, x0, 0 # zerando o contador

jal x11, loop

loop:
lb x18, 1025(x0) # 1025 é a leitura de um caracter

lw x20, space
beq x18, x20, segunda_palavra # caso tenha um espaço, a proxima visita ao loop será para ler a palavra 2

lw x20, A # colocando as letras nos registradores
lw x21, E
lw x22, I
lw x23, O
lw x24, U
beq x18, x20, pont1 # comparando com A
beq x18, x21, pont1 # comparando com E
beq x18, x22, pont1 # comparando com I
beq x18, x23, pont1 # comparando com O
beq x18, x24, pont1 # comparando com U

lw x20, D # reutilizando os registradores
lw x21, G
lw x22, T

beq x18, x20, pont2 # comparando com D
beq x18, x21, pont2 # comparando com G
beq x18, x22, pont2 # comparando com T

lw x20, B
lw x21, C
lw x22, M
lw x23, N
lw x24, P

beq x18, x20, pont3 # comparando com B
beq x18, x21, pont3 # comparando com C
beq x18, x22, pont3 # comparando com M
beq x18, x23, pont3 # comparando com N
beq x18, x24, pont3 # comparando com P

lw x20, F
lw x21, H
lw x22, V
lw x23, W
lw x24, Y

beq x18, x20, pont4 # comparando com F
beq x18, x21, pont4 # comparando com H
beq x18, x22, pont4 # comparando com V
beq x18, x23, pont4 # comparando com W
beq x18, x24, pont4 # comparando com Y

lw x20, K
lw x21, R
lw x22, S

beq x18, x20, pont5 # comparando com K
beq x18, x21, pont5 # comparando com R
beq x18, x22, pont5 # comparando com S

lw x20, J
lw x21, L
lw x22, K

beq x18, x20, pont8 # comparando com J
beq x18, x21, pont8 # comparando com L
beq x18, x22, pont8 # comparando com k

lw x20, Q
lw x21, Z

beq x18, x20, pont10 # comparando com Q
beq x18, x21, pont10 # comparando com Z

addi x12, x25, 0 # chegando aqui as 2 palavras ja foram contabilizadas, falta verificar a pontuação
jal x11, end 

end:
blt x12, x10, ganhador1 # pontos do jogador 1 > pontos pontos do jogador 2
blt x10, x12, ganhador2 # pontos do jogador 1 < pontos do jogador 2
beq x10, x12, empate  # empate

ganhador1:
lw x13, vencedor1
addi x13, x13, 48 # se jogador 1 vencer, irá aparecer '1'
sw x13, 1024(x0) # 1024 é a escrita de um caracter
halt 

ganhador2:
lw x13, vencedor2
addi x13, x13, 48 # se jogador 2 vencer, irá aparecer '2'
sw x13, 1024(x0)
halt 

empate:
lw x13, empatee
addi x13, x13, 48 # se ocorrer empate, irá aparecer '0'
sw x13, 1024(x0)
halt

pont1:
addi x25, x25, 1
jal x11, loop

pont2:
addi x25, x25, 2
jal x11, loop

pont3:
addi x25, x25, 3
jal x11, loop

pont4:
addi x25, x25, 4
jal x11, loop

pont5:
addi x25, x25, 5
jal x11, loop

pont8:
addi x25, x25, 8
jal x11, loop

pont10:
addi x25, x25, 10
jal x11, loop

vencedor1: .word 1
vencedor2: .word 2
empatee: .word 0

space: .word 32

A: .word 65 #alfabeto de acordo com a tabela ascii
B: .word 66
C: .word 67
D: .word 68
E: .word 69
F: .word 70
G: .word 71
H: .word 72
I: .word 73
J: .word 74
K: .word 75
L: .word 76
M: .word 77
N: .word 78
O: .word 79
P: .word 80
Q: .word 81
R: .word 82
S: .word 83
T: .word 84
U: .word 85
V: .word 86
W: .word 87
X: .word 88
Y: .word 89
Z: .word 90
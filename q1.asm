lw x11, a # a = 5 # representa a que é igual a 5
lw x12, b # b = 9 # representa b que é igual a 9
lw x13, a # m = a # representa m que é igual a "a"

beq x13, x12, jump # comparador para ver se são iguais
sub x13, x11, x12
halt

jump:
sub x13, x12, x11 # se forem iguais vem para aq para fazer a subtração
halt

a: .word 5
b: .word 9


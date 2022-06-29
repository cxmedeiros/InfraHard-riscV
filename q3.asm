lw x10, dez # colocando o dez para o registrador x10
lw x11, onze # colocando o onze para o registrador x11
lw x22, aux1 # colocando o aux1 para o registrador x22
lw x23, aux2 # colocando o aux2 para o registrador x23

or x20, x10, x22 # modifica a primeita metade do hexadecial 
srli x20, x20, 16 # faz um shift right para deslocar para a segunda metade do hexadecimal
or x21, x11, x23 # mantem a ultima metade do hexadecial para ocorrer a troca no AND
and x11, x21, x20 # faz a troca dos bits 20-27 dos registradores x20 e x21 
halt

aux1: .word 0xf00fffff # valores de bits diferentes de 4-11
dez: .word 0xffff0000 # setando o x10 para esse valor 
aux2: .word 0x00000ff0 # valores de bits diferentes de 20-27
onze: .word 0x0000ffff # setando o x11 para esse valor 
lw x20, a # representa a
lw x21, b # representa b
lw x22, c # representa c
lw x23, x # representa x
lw x24, comp32
lw x25, comp25

bge x20, x0, jump # comparar para ver se a >= 0
halt

jump: 
bge x24, x21, jump_2 # comparar para ver se b <= 32
halt  

jump_2: 
blt x25, x22, end # comparar para ver se c > 25 
halt 

end: 
addi x23, x0, 1 # caso tudo tiver correto x = 1
halt 

a: .word 0
b: .word 32
c: .word 26
x: .word 0
comp32: .word 32
comp25: .word 25
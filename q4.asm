lw x11, a1 # a1 ta sendo colocado no registrador x11
xori x10, x11, -1 # implementação do xor (or + not) nos registradores, bit a bit, x10 e x11
halt
a1: .word 1
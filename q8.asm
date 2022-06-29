# colocar a ordem dos LEDs em sequencia 
# aumentar o tempo do "time" no simulador
# pinos: 8-13

lb x20, 0(x0)
sb x20, 1030(x0) # 1030 é para a escrita do numero do pin

loop:
	lh x20, 1031(x0) # leitura analógica que guarda em x20
	addi x21, x0, 200 # 10 é setado em 200
	blt x20, x21, temperatura1 # para fazer a comparacao entre a leitura analogica e mandar pra temperatura correta para ligar os leds
	addi x21, x0, 300 # 15 é setado em 300
	blt x20, x21, temperatura2
	addi x21, x0, 400 # 20 é setado em 400
	blt x20, x21, temperatura3
	addi x21, x0, 500 # 25 é setado em 500
	blt x20, x21, temperatura4
	addi x21, x0, 600 # 30 é setado em 600
	blt x20, x21, temperatura5

	jal x22, temperatura6 # > 30, quando n for nenhum dos casos anteriores

temperatura1:
	addi x23, x0, 1
	sb x23, 1027(x0) # 1027 é a escrita dos status dos bits dos pins
	jal x22, loop

temperatura2:
	addi x23, x0, 2
	sb x23, 1027(x0)
	jal x22, loop

temperatura3:
	addi x23, x0, 4
	sb x23, 1027(x0)
	jal x22, loop

temperatura4:
	addi x23, x0, 8
	sb x23, 1027(x0)
	jal x22, loop

temperatura5:
	addi x23, x0, 16
	sb x23, 1027(x0)
	jal x22, loop

temperatura6:
	addi x23, x0, 32
	sb x23, 1027(x0)
	jal x22, loop


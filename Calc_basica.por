programa {
	funcao inicio() {
		real n1, n2, resultado
		inteiro op
		n1 = valor()
		n2 = valor()

		escreva("Escolha: 1)+ 2)- 3)* 4)/ : ")
		leia(op)
		escolha (op) {
			caso 1: resultado = n1 + n2 pare
			caso 2: resultado = n1 - n2 pare
			caso 3: resultado = n1 * n2 pare
			caso 4: resultado = n1 / n2 pare
			caso contrario: resultado = 0.0
		}

		escreva("Resultado: ", resultado)
	}

	funcao real valor() {
		real num
		escreva("Digite um número: ")
		leia(num)
		retorne num
	}
}

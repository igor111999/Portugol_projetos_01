programa {
	funcao inicio() {
		real n1, n2, resultado
		inteiro op

		n1 = pedir_valor()
		n2 = pedir_valor()

		escreva("Operação (1:+, 2:-, 3:*, 4:/): ")
		leia(op)

		resultado = calcular(n1, n2, op)

		escreva("Resultado: ", resultado)
	}

	funcao real pedir_valor() {
		real v
		escreva("Digite um numero: ")
		leia(v)
		retorne v
	}

	funcao real calcular(real a, real b, inteiro op) {
		escolha (op) {
			caso 1: retorne a + b
			caso 2: retorne a - b
			caso 3: retorne a * b
			caso 4: retorne a / b
			caso contrario: retorne 0.0
		}
	}
}

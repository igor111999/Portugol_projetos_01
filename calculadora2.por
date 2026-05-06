programa {
	funcao inicio() {
		real n1, n2, resultado
		inteiro op

		// 1. Usa a função para pegar os valores
		n1 = pedir_valor()
		n2 = pedir_valor()

		// 2. Pergunta o operador
		escreva("Operação (1:+, 2:-, 3:*, 4:/): ")
		leia(op)

		// 3. Usa a função para calcular e retorna o resultado final
		resultado = calcular(n1, n2, op)

		escreva("Resultado: ", resultado)
	}

	// Função simples para pegar valor
	funcao real pedir_valor() {
		real v
		escreva("Digite um número: ")
		leia(v)
		retorne v
	}

	// Função que pergunta o operador e já retorna o cálculo pronto
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

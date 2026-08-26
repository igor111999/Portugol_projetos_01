programa {
	funcao inicio() {
		real n1, n2
		inteiro op

		escreva("1) + | 2) - | 3) * | 4) / \nEscolha a operação: ")
		leia(op)

		n1 = ler_valor("primeiro")
		n2 = ler_valor("segundo")

		escreva("Resultado: ", calcular(n1, n2, op))
	}

	funcao real ler_valor(cadeia ordem) {
		real valor
		escreva("Digite o ", ordem, " número: ")
		leia(valor)
		retorne valor
	}

	funcao real calcular(real a, real b, inteiro op) {
		escolha (op) {
			caso 1: retorne somar(a, b)
			caso 2: retorne subtrair(a, b)
			caso 3: retorne multiplicar(a, b)
			caso 4: retorne dividir(a, b)
			caso contrario: 
				escreva("Operação Inválida! ")
				retorne 0.0
		}
	}

	funcao real somar(real a, real b) { retorne a + b }
	funcao real subtrair(real a, real b) { retorne a - b }
	funcao real multiplicar(real a, real b) { retorne a * b }
	funcao real dividir(real a, real b) { 
		se (b == 0) { retorne 0.0 } 
		retorne a / b 
	}
}

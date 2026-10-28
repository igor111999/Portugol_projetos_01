programa {
	funcao inicio() {
		cadeia lista_produtos[100] 
		cadeia produto = "iniciar"
		inteiro contador = 0

		enquanto (produto != "" e contador < 100) {
			escreva("Digite o nome do produto (ou deixe em branco para sair): ")
			leia(produto)
			
			se (produto != "") {
				lista_produtos[contador] = produto
				contador = contador + 1 
			}
		}

		escreva("\n--- PROGRAMA ENCERRADO ---\n")
		escreva("Produtos cadastrados:\n")
		
		para (inteiro i = 0; i < contador; i++) {
			escreva("- ", lista_produtos[i], "\n")
      
		}
	}
}

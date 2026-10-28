programa
{
	funcao inicio()
	{
		inteiro TAMANHO = 5
		

		cadeia titulos[TAMANHO]
		cadeia autores[TAMANHO]
		cadeia locatarios[TAMANHO] 
		logico disponivel[TAMANHO] 
		inteiro opcao, i, indiceLivro
		cadeia nomePessoa

		para (i = 0; i < TAMANHO; i++)
		{
			titulos[i] = ""
			autores[i] = ""
			locatarios[i] = "Ninguém"
			disponivel[i] = verdadeiro
		}

		faca
		{
			escreva("\n=== SISTEMA DE BIBLIOTECA ===\n")
			escreva("1. Cadastrar Livro\n")
			escreva("2. Listar Livros\n")
			escreva("3. Pegar Livro Emprestado\n")
			escreva("4. Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			limpa()

			escolha(opcao)
			{
				caso 1:
					logico cadastrado = falso
					para (i = 0; i < TAMANHO; i++)
					{
						se (titulos[i] == "")
						{
							escreva("Digite o título do livro: ")
							leia(titulos[i])
							escreva("Digite o autor do livro: ")
							leia(autores[i])
							escreva("Livro cadastrado com sucesso na posição ", i + 1, "!\n")
							cadastrado = verdadeiro
							pare 
						}
					}
					se (nao cadastrado)
					{
						escreva("Erro: A biblioteca está cheia!\n")
					}
					pare

				caso 2:
					escreva("=== LIVROS DISPONÍVEIS E EMPRESTADOS ===\n")
					para (i = 0; i < TAMANHO; i++)
					{
						se (titulos[i] != "")
						{
							escreva("[ID: ", i, "] ", titulos[i], " - Autor: ", autores[i])
							se (disponivel[i])
							{
								escreva(" (Status: DISPONÍVEL)\n")
							}
							senao
							{
								escreva(" (Status: EMPRESTADO para ", locatarios[i], ")\n")
							}
						}
					}
					pare

				caso 3:
					escreva("Digite o ID do livro que deseja pegar: ")
					leia(indiceLivro)

					se (indiceLivro >= 0 e indiceLivro < TAMANHO e titulos[indiceLivro] != "")
					{
						se (disponivel[indiceLivro])
						{
							escreva("Digite o seu nome: ")
							leia(nomePessoa)
							
							locatarios[indiceLivro] = nomePessoa
							disponivel[indiceLivro] = falso
							escreva("Empréstimo realizado com sucesso!\n")
						}
						senao
						{
							escreva("Desculpe, este livro já foi emprestado para ", locatarios[indiceLivro], ".\n")
						}
					}
					senao
					{
						escreva("ID de livro inválido ou inexistente.\n")
					}
					pare

				caso 4:
					escreva("Saindo do sistema... Obrigado!\n")
					pare

				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
			}
			
		} enquanto (opcao != 4)
	}
}

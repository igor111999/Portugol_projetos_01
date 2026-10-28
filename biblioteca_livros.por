programa
{
	funcao inicio()
	{
		// Definição do tamanho máximo da biblioteca (5 livros)
		constante inteiro TAMANHO = 5
		
		// Vetores para armazenar os dados
		cadeia titulos[TAMANHO]
		cadeia autores[TAMANHO]
		cadeia locatarios[TAMANHO] // Armazena quem pegou o livro
		logico disponivel[TAMANHO] // Define se o livro está livre (verdadeiro) ou emprestado (falso)

		inteiro opcao, i, indiceLivro
		cadeia nomePessoa

		// Inicializa o sistema com os livros disponíveis e vazios
		para (i = 0; i < TAMANHO; i++)
		{
			titulos[i] = ""
			autores[i] = ""
			locatarios[i] = "Ninguém"
			disponivel[i] = verdadeiro
		}

		// Menu principal do sistema
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
					// Cadastro de livros
					logico cadastrado = falso
					para (i = 0; i < TAMANHO; i++)
					{
						// Procura uma vaga vazia no vetor
						se (titulos[i] == "")
						{
							escreva("Digite o título do livro: ")
							leia(titulos[i])
							escreva("Digite o autor do livro: ")
							leia(autores[i])
							escreva("Livro cadastrado com sucesso na posição ", i + 1, "!\n")
							cadastrado = verdadeiro
							pare // Sai do laço 'para' após cadastrar
						}
					}
					se (nao cadastrado)
					{
						escreva("Erro: A biblioteca está cheia!\n")
					}
					pare

				caso 2:
					// Exibição dos livros
					escreva("=== LIVROS DISPONÍVEIS E EMPRESTADOS ===\n")
					para (i = 0; i < TAMANHO; i++)
					{
						// Só exibe se a posição não estiver vazia
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
					// Empréstimo de livro
					escreva("Digite o ID do livro que deseja pegar: ")
					leia(indiceLivro)

					// Valida se o ID digitado existe no vetor
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

programa 
{
    funcao inicio() 
    {
        inteiro contador = 1
        inteiro idade
        real soma_idades = 0.0
        real media

        // Laço para repetir a leitura 5 vezes
        enquanto (contador <= 5) 
        {
            escreva("Digite a idade da ", contador, "ª pessoa: ")
            leia(idade)

            soma_idades = soma_idades + idade  // Acumula as idades
            contador = contador + 1            // Incrementa o contador
        }

        // Calcula a média dividindo o total por 5
        media = soma_idades / 5

        escreva("\nA média das idades informadas é: ", media, " anos.")
    }
}

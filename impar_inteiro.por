programa 
{
    funcao intei() 
    {
        real numero

        escreva("Digite um número: ")
        leia(numero)

        // Se o resto da divisão por 1 for 0, o número não tem casas decimais
        se (numero % 1 == 0) 
        {
            escreva("O número ", numero, " é INTEIRO.")
        }
        senao 
        {
            escreva("O número ", numero, " é QUEBRADO (REAL).")
        }
    }

    funcao inicio() 
    {
        inteiro numero

        escreva("Digite um número inteiro: ")
        leia(numero)

        se (numero % 2 == 0) 
        {
            escreva("O número ", numero, " é PAR.")
        }
        senao 
        {
            escreva("O número ", numero, " é ÍMPAR.")
        }
    }
}

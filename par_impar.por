programa 
{
    funcao inicio() 
    {
        inteiro numero

        escreva("Digite um número inteiro: ")
        leia(numero)

        se (numero % 2 == 0) 
        {
            escreva("O número ", numero, " é PAR.\n")
        } 
        senao 
        {
            escreva("O número ", numero, " é ÍMPAR.\n")
        }
    }
}

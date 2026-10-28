programa 
{
    funcao inicio() 
    {
        real celsius, fahrenheit

        escreva("Digite a temperatura em graus Celsius (°C): ")
        leia(celsius)

        fahrenheit = (celsius * 9 / 5) + 32

        escreva("A temperatura equivalente é: ", fahrenheit, " °F\n")
    }
}

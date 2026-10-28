programa 
{
    inclua biblioteca Util --> u

    funcao inicio() 
    {
        inteiro moedas = 50
        inteiro aposta
        inteiro n1, n2, n3
        caracter continuar = 'S'

        escreva("🎰 BEM-VINDO AO CASSINO PORTUGOL! 🎰\n")

        enquanto (moedas > 0 e (continuar == 'S' ou continuar == 's')) 
        {
            escreva("\nSeu saldo atual: ", moedas, " moedas.\n")
            escreva("Quanto deseja apostar? ")
            leia(aposta)

            se (aposta > moedas ou aposta <= 0) 
            {
                escreva("❌ Aposta inválida ou saldo insuficiente!\n")
            } 
            senao 
            {
                moedas = moedas - aposta
                escreva("\n🎰 Girando os motores... 🎰\n")
                
                n1 = u.sorteia(1, 7)
                n2 = u.sorteia(1, 7)
                n3 = u.sorteia(1, 7)

                escreva("[ ", n1, " ]  [ ", n2, " ]  [ ", n3, " ]\n\n")

                // Condição de vitória máxima (Três 7)
                se (n1 == 7 e n2 == 7 e n3 == 7) 
                {
                    escreva("🎉 JACKPOT! Três 7! Você ganhou 10x sua aposta! 🎉\n")
                    moedas = moedas + (aposta * 10)
                } 
                // Três números iguais quaisquer
                senao se (n1 == n2 e n2 == n3) 
                {
                    escreva("✨ Incrível! Três números iguais! Ganhou 5x sua aposta! ✨\n")
                    moedas = moedas + (aposta * 5)
                } 
                // Apenas dois números iguais
                senao se (n1 == n2 ou n2 == n3 ou n1 == n3) 
                {
                    escreva("👍 Combinou dois números! Recebe o dobro de volta.\n")
                    moedas = moedas + (aposta * 2)
                } 
                senao 
                {
                    escreva("😢 Não foi dessa vez! Você perdeu a aposta.\n")
                }
            }

            se (moedas > 0) 
            {
                escreva("\nDeseja jogar novamente? (S/N): ")
                leia(continuar)
            }
        }

        se (moedas <= 0) 
        {
            escreva("\n💥 Você faliu! Suas moedas acabaram. Fim de jogo!\n")
        } 
        senao 
        {
            escreva("\n💰 Você saiu do jogo com ", moedas, " moedas. Até a próxima!\n")
        }
    }
}

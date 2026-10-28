programa 
{
    inclua biblioteca Util --> u

    funcao inicio() 
    {
        inteiro num1, num2, resposta_correta, resposta_usuario
        inteiro pontuacao = 0
        logico jogando = verdadeiro

        escreva("⚡ DESAFIO DA MATEMÁTICA SUPREMA ⚡\n")
        escreva("Acerte o máximo de perguntas que conseguir. Um erro e você perde!\n\n")

        enquanto (jogando == verdadeiro) 
        {
            // Gera números aleatórios de 2 a 9 para a multiplicação
            num1 = u.sorteia(2, 9)
            num2 = u.sorteia(2, 9)
            resposta_correta = num1 * num2

            escreva("❓ Quanto é ", num1, " x ", num2, "? ")
            leia(resposta_usuario)

            se (resposta_usuario == resposta_correta) 
            {
                pontuacao = pontuacao + 1
                escreva("✅ Correto! Sequência atual: ", pontuacao, "\n\n")
            } 
            senao 
            {
                escreva("\n❌ ERRADO! O resultado era ", resposta_correta, ".\n")
                jogando = falso
            }
        }

        escreva("===============================\n")
        escreva("💀 GAME OVER! 💀\n")
        escreva("Sua pontuação final foi de: ", pontuacao, " acerto(s) seguido(s).\n")
        
        se (pontuacao >= 10) 
        {
            escreva("🏆 Status: Gênio da Matemática!\n")
        } 
        senao se (pontuacao >= 5) 
        {
            escreva("🥈 Status: Muito bom, está no caminho!\n")
        } 
        senao 
        {
            escreva("🥉 Status: Precisa treinar mais a tabuada.\n")
        }
        escreva("===============================\n")
    }
}

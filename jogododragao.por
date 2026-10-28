programa 
{
    inclua biblioteca Util --> u // Biblioteca para gerar números aleatórios

    funcao inicio() 
    {
        inteiro hp_jogador = 100
        inteiro hp_dragao = 120
        inteiro opcao, dano

        escreva("     /\\_ _/\\\n")
        escreva("    (  ==  )   CUIDADO! UM DRAGÃO APARECEU!\n")
        escreva("    (  -   )\n")
        escreva("==== Batalha Lendária ====\n\n")

        enquanto (hp_jogador > 0 e hp_dragao > 0) 
        {
            escreva("Seu HP: ", hp_jogador, " | HP do Dragão: ", hp_dragao, "\n")
            escreva("1. Atacar com a Espada\n")
            escreva("2. Usar Poção de Cura (+25 HP)\n")
            escreva("Escolha sua ação: ")
            leia(opcao)

            se (opcao == 1) 
            {
                dano = u.sorteia(15, 30)
                hp_dragao = hp_dragao - dano
                escreva("\n⚔️ Você atacou e causou ", dano, " de dano no dragão!\n")
            } 
            senao se (opcao == 2) 
            {
                hp_jogador = hp_jogador + 25
                escreva("\n🧪 Você tomou uma poção e recuperou 25 de vida!\n")
            }
            senao 
            {
                escreva("\n❌ Opção inválida! Você perdeu o turno.\n")
            }

            // Turno do Dragão (se ele ainda estiver vivo)
            se (hp_dragao > 0) 
            {
                dano = u.sorteia(10, 25)
                hp_jogador = hp_jogador - dano
                escreva("🔥 O Dragão cuspiu fogo e te causou ", dano, " de dano!\n\n")
            }
        }

        // Fim de jogo
        se (hp_jogador > 0) 
        {
            escreva("🏆 PARABÉNS! Você derrotou o dragão e salvou o reino!\n")
        } 
        senao 
        {
            escreva("💀 Você foi derrotado... O dragão dominou o mundo.\n")
        }
    }
}

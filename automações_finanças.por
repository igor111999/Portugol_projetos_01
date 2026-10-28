programa 
{
    funcao inicio() 
    {
        real renda, moradia, alimentacao, lazer, total_gastos, saldo_final
        real perc_moradia, perc_alimentacao, perc_lazer

        escreva("=== SISTEMA DE GESTÃO FINANCEIRA ===\n\n")
        
        escreva("Digite a sua Renda Mensal Líquida (R$): ")
        leia(renda)

        escreva("Gasto total com Moradia/Contas (R$): ")
        leia(moradia)

        escreva("Gasto total com Alimentação (R$): ")
        leia(alimentacao)

        escreva("Gasto total com Lazer/Transporte (R$): ")
        leia(lazer)

        // Cálculos funcionais
        total_gastos = moradia + alimentacao + lazer
        saldo_final = renda - total_gastos

        perc_moradia = (moradia / renda) * 100
        perc_alimentacao = (alimentacao / renda) * 100
        perc_lazer = (lazer / renda) * 100

        // Relatório Final
        escreva("\n=====================================")
        escreva("\n📊 RELATÓRIO DO SEU ORÇAMENTO MENSAL")
        escreva("\n=====================================")
        escreva("\nTotal Gasto: R$ ", total_gastos)
        escreva("\nSaldo Final: R$ ", saldo_final)
        escreva("\n\n📉 Distribuição dos gastos sobre sua renda:")
        escreva("\n• Moradia: ", perc_moradia, "%")
        escreva("\n• Alimentação: ", perc_alimentacao, "%")
        escreva("\n• Lazer: ", perc_lazer, "%")
        escreva("\n-------------------------------------")

        // Diagnóstico condicional
        se (saldo_final > 0) 
        {
            escreva("\n✅ Parabéns! Você terminou o mês no azul e guardou R$ ", saldo_final)
        } 
        senao se (saldo_final == 0) 
        {
            escreva("\n⚠️ Atenção! Você gastou exatamente tudo o que ganhou. Cuidado com imprevistos.")
        } 
        senao 
        {
            escreva("\n🚨 ALERTA! Seu orçamento está estourado em R$ ", (saldo_final * -1), ". Reduza seus custos!")
        }
        escreva("\n=====================================\n")
    }
}

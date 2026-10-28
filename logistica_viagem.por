programa 
{
    funcao inicio() 
    {
        real distancia, consumo_carro, preco_combustivel, custo_total
        inteiro passageiros
        real custo_por_pessoa

        escreva("🚗 CALCULADORA DE LOGÍSTICA DE VIAGEM 🚗\n\n")

        escreva("Qual a distância total da viagem (em KM)? ")
        leia(distancia)

        escreva("Quantos KM o seu carro faz com 1 litro de combustível? ")
        leia(consumo_carro)

        escreva("Qual o preço atual do litro do combustível (R$)? ")
        leia(preco_combustivel)

        escreva("A viagem será dividida entre quantas pessoas? ")
        leia(passageiros)

        // Lógica de cálculo real
        // 1. Descobrir quantos litros serão gastos
        // 2. Multiplicar pelo preço do combustível
        custo_total = (distancia / consumo_carro) * preco_combustivel
        
        se (passageiros <= 0) 
        {
            passageiros = 1 // Garante que não ocorra divisão por zero
        }
        
        custo_por_pessoa = custo_total / passageiros

        // Resultados
        escreva("\n=====================================")
        escreva("\n📋 RESUMO FINANCEIRO DA VIAGEM")
        escreva("\n=====================================")
        escreva("\n• Combustível necessário: ", (distancia / consumo_carro), " litros")
        escreva("\n• Custo total estimado: R$ ", custo_total)
        escreva("\n• Custo por passageiro (", passageiros, " pessoas): R$ ", custo_por_pessoa)
        escreva("\n=====================================\n")
    }
}

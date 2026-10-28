programa 
{
    funcao inicio() 
    {
        real preco_item = -1.0
        real total_compra = 0.0
        real valor_pago, troco
        inteiro forma_pagamento
        inteiro total_itens = 0

        escreva("🏪 SISTEMA DE VENDAS (PDV) - MERCADINHO PORTUGOL 🏪\n")
        escreva("Digite o preço de cada produto (ou digite '0' para fechar a compra):\n\n")

        // Loop de inserção de produtos
        enquanto (preco_item != 0) 
        {
            total_itens = total_itens + 1
            escreva("Produto nº ", total_itens, " (R$): ")
            leia(preco_item)

            se (preco_item > 0) 
            {
                total_compra = total_compra + preco_item
            }
            senao se (preco_item < 0)
            {
                escreva("❌ Valor inválido descartado.\n")
                total_itens = total_itens - 1
            }
        }

        escreva("\n🛒 COMPRA CONCLUÍDA!")
        escreva("\nTotal de Itens: ", (total_itens - 1))
        escreva("\nValor Total: R$ ", total_compra)
        escreva("\n\nFormas de pagamento:")
        escreva("\n1. Dinheiro / Pix")
        escreva("\n2. Cartão de Crédito")
        escreva("\nEscolha a opção: ")
        leia(forma_pagamento)

        se (forma_pagamento == 1) 
        {
            escreva("\nValor recebido em dinheiro (R$): ")
            leia(valor_pago)

            se (valor_pago >= total_compra) 
            {
                troco = valor_pago - total_compra
                escreva("\n💵 Pagamento Processado.")
                escreva("\nTroco a devolver: R$ ", troco)
            } 
            senao 
            {
                escreva("\n❌ Erro: Valor insuficiente fornecido.")
            }
        } 
        senao 
        {
            escreva("\n💳 Transação aprovada no cartão. Imprimindo comprovante...")
        }
        escreva("\n\nObrigado pela preferência e volte sempre!\n")
    }
}

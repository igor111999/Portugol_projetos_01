programa {
	inclua biblioteca Util 
	funcao inicio() {
		inteiro resp
		inteiro correta
		correta = 2
		escreva("Qual ? \n 1) \n 2) \n 3) \n 4) \n Qual alternativa correta ")
		leia(resp)
		se (resp == "") {
      retorne inicio()
    }
		senao{
			se (resp == 2 ou resp == 2010 ou resp == "2)"){
				escreva("Parabens voce passou \n \n ")
			}
			senao{
				enquanto (resp != correta ou resp != 2010)
				{
						Util.aguarde(20000)
						escreva("Qual ? \n 1) \n 2) \n 3) \n 4) \n Qual alternativa correta ")
						leia(resp)
				}
			}	
		}
		inteiro resp2
		inteiro correta2
		correta2 = 2
		escreva("Qual ? \n 1) \n 2) \n 3) \n 4) \n Qual alternativa correta ")
		leia(resp2)
		se (resp2 == "") {
      retorne inicio()
    }
		senao{
			se (resp2 == 2 ou resp2 == 2010 ou resp2 == "2)"){
				escreva("Parabens voce ganhou \n \n ")
			}
			senao{
				enquanto (resp2 != correta2 ou resp2 != 2010)
				{
						Util.aguarde(20000)
						escreva("Qual2 ? \n 1) \n 2) \n 3) \n 4) \n Qual 2")
						leia(resp2)
				}
			}
		}		
	}
}


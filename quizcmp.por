programa {
  funcao inicio() {
    cadeia resp
    escreva("Qual ano nasci ?")
    escreva("\n 1)2009 \n 2)2010 \n 3)2015 \n 4)2007")
    escreva("\n Qual alternativa correta ")
    leia(resp)
    se (resp == "") {
      retorne inicio()
    }
    senao{
      se (resp == 2 ou resp == 2010 ou resp == "2)")
      {
        escreva("correta")
      }
      senao {
        escreva("errou")
        retorne inicio()
      }
    }
    cadeia resp2
    escreva("Qual  w?")
    escreva("\n 1)2009 \n 2)2010 \n 3)2015 \n 4)2007")
    escreva("\n Qual alternativa correta ")
    leia(resp2)
    se (resp2 == "") {
      retorne inicio()
    }
    senao{
      se (resp2 == 2 ou resp == 2010 ou resp == "2)")
      {
        escreva("correta")
      }
      senao {
        escreva("errou")
        retorne inicio()
      }
    }
    cadeia resp3
    escreva("Qual ?")
    escreva("\n 1)2009 \n 2)2010 \n 3)2015 \n 4)2007")
    escreva("\n Qual alternativa correta ")
    leia(resp3)
    se (resp3 == "") {
      retorne inicio()
    }

    
    senao{
      se (resp3 == 2 ou resp == 2010 ou resp == "2)")
      {
        escreva("Parabens voce ganhou")
      }
      senao {
        escreva("errou")
        retorne inicio()

      }
    }    
  }  
}

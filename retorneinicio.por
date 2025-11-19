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
  }  
  funcao dois() {
      
    }  
  }
}

programa {
  inclua biblioteca Util
  funcao inicio() {
    cadeia res
    inteiro num 
    num = Util.sorteia(1,2)
    escreva("aperte enter para girar a moeda")
    leia(res)
    se (num == 1){
      escreva("caiu cara")
    }
    senao {
      escreva("coroa")
    }
  }
}

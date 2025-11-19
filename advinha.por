programa {
  funcao inicio() {
    inteiro numero_secreto, palpite
    numero_secreto = 7
    escreva(" jogo do numero secreto")
    escreva("tente advinhar o numero de 1 a 10")
    leia(palpite)
    se (palpite == numero_secreto) {
      escreva("acertou")
      }
    se (palpite < numero_secreto) {
      escreva("o numero é maior do que o digitado")
    }
    senao {
      escreva(" o numero é menor do que o digitado")
    }
  }
}

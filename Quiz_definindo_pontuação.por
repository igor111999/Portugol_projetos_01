programa {
  funcao inicio() {
    cadeia pergunta1 = "pergunta1"
    cadeia resposta1 = "resposta1"
    cadeia pergunta2 = "pergunta2"
    cadeia resposta2 = "resposta2"
    cadeia pergunta3 = "pergunta3"
    cadeia resposta3 = "resposta3"
    cadeia pergunta4 = "pergunta4"
    cadeia resposta4 = "resposta4"
    cadeia respostaUsuario 
    inteiro pontuacao = 0
    escreva(pergunta1)
    leia(respostaUsuario)
    se (respostaUsuario == resposta1){
      pontuacao = pontuacao+100
      escreva("resposta correta",pontuacao)}
    senao{
      escreva("errou")
    }
    escreva(pergunta2)
    leia(respostaUsuario)
    se (respostaUsuario == resposta2){
      pontuacao = pontuacao+100
      escreva("resposta correta",pontuacao)}
    senao{
      escreva("errou")
      }
    escreva(pergunta3)
    leia(respostaUsuario)
    se (respostaUsuario == resposta3){
      pontuacao = pontuacao+100
      escreva("resposta correta",pontuacao)}
    senao{
      escreva("errou")
    }
    escreva(pergunta4)
    leia(respostaUsuario)
    se (respostaUsuario == resposta4){
      pontuacao = pontuacao+100
      escreva("resposta correta",pontuacao)}
    senao{
      escreva("errou")
    }  
  }
}

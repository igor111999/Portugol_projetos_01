programa {
  funcao inicio() {
   real valorpago , valortotal, troco
   escreva("valor pago")
   leia(valorpago)
   escreva("valor total da compra")
   leia(valortotal)

   se (valorpago >= valortotal) {
    troco = valorpago-valortotal
    escreva("troco : ",troco) 
   }
   senao{
    escreva("valor pago insuficiente, falta ", (valortotal-valorpago))
   }
  }
}

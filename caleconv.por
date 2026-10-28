programa {
 inclua biblioteca Matematica --> mat
 funcao inicio() {
   real n1, n2, resultado
   inteiro op


   escreva("===== CALCULADORA =====\n\n")


   n1 = valorr()
   n2 = valorr()


   escreva("Escolha:\n1) Adição\n2) Subtração\n3) Multiplicação\n4) Divisão\n5) Resto\n6) Oposto\n7) Porcentagem\n8) Inteiro\n9) Potência\n10) Raiz\n11) Trabalhar com conversão de medidas\n: ")
   leia(op)
   escolha (op) {
     caso 1: resultado = n1 + n2 pare
     caso 2: resultado = n1 - n2 pare
     caso 3: resultado = n1 * n2 pare
     caso 4: resultado = n1 / n2 pare
     caso 5: resultado = tp.real_para_inteiro(n1) % tp.real_para_inteiro(n2) pare
     caso 6: resultado = n1 * -1 pare
     caso 7: resultado = (n1 / 100) * n2 pare
     caso 8: resultado = tp.real_para_inteiro(n1) pare
     caso 9: resultado = mat.potencia(n1, n2) pare
     caso 10: resultado = mat.raiz(n1, 2.0) pare
     caso contrario:


       inteiro opcao
       real valor
       real resultado


       escreva("===== CONVERSOR DE GRANDEZAS =====\n\n")


       escreva("Escolha a grandeza:\n")
       escreva("1) Metro para Centímetro\n")
       escreva("2) Quilômetro para Metro\n")
       escreva("3) Quilograma para Gramas\n")
       escreva("4) Tonelada para Quilograma\n")
       escreva("5) Hectare para Metro Quadrado\n")
       escreva("6) Litro para Mililitro\n")
       escreva("7) Hora para Minutos\n")
       escreva("8) Minuto para Segundos\n")
       escreva("9) Km/h para m/s\n")
       escreva("10) Celsius para Fahrenheit\n")
       escreva("11) Reais para Centavos\n")
       escreva("12) Metro para Quilômetro\n")
       escreva("13) Hectare para Km²\n")
       escreva("14) GB para MB\n")
       escreva("15) MB para KB\n")
       escreva("16) Polegada para Centímetro\n")


       escreva("\nDigite a opção desejada: ")
       leia(opcao)


       escreva("\nDigite o valor: ")
       leia(valor)


       escolha (opcao) {


           caso 1:
               resultado = valor * 100
               escreva("Resultado: ", resultado, " cm")
               pare


           caso 2:
               resultado = valor * 1000
               escreva("Resultado: ", resultado, " m")
               pare


           caso 3:
               resultado = valor * 1000
               escreva("Resultado: ", resultado, " g")
               pare


           caso 4:
               resultado = valor * 1000
               escreva("Resultado: ", resultado, " kg")
               pare


           caso 5:
               resultado = valor * 10000
               escreva("Resultado: ", resultado, " m²")
               pare


           caso 6:
               resultado = valor * 1000
               escreva("Resultado: ", resultado, " ml")
               pare


           caso 7:
               resultado = valor * 60
               escreva("Resultado: ", resultado, " minutos")
               pare


           caso 8:
               resultado = valor * 60
               escreva("Resultado: ", resultado, " segundos")
               pare


           caso 9:
               resultado = valor / 3.6
               escreva("Resultado: ", resultado, " m/s")
               pare


           caso 10:
               resultado = (valor * 9 / 5) + 32
               escreva("Resultado: ", resultado, " °F")
               pare


           caso 11:
               resultado = valor * 100
               escreva("Resultado: ", resultado, " centavos")
               pare


           caso 12:
               resultado = valor / 1000
               escreva("Resultado: ", resultado, " km")
               pare


           caso 13:
               resultado = valor / 100
               escreva("Resultado: ", resultado, " km²")
               pare


           caso 14:
               resultado = valor * 1024
               escreva("Resultado: ", resultado, " MB")
               pare


           caso 15:
               resultado = valor * 1024
               escreva("Resultado: ", resultado, " KB")
               pare


           caso 16:
               resultado = valor * 2.54
               escreva("Resultado: ", resultado, " cm")
               pare


           caso contrario:
               escreva("Opção inválida!")
       }
   }
   escreva("\nResultado: ", resultado)
 }


 funcao real valorr() {
   real num
   escreva("Digite um número: ")
   leia(num)
   retorne num
 }
}


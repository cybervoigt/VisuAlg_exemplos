algoritmo "PALINDROME"
// Disciplina   : [T�cnico de Inform�tica - Programa��o 1]
// Professor   : Ricardo Voigt
// Fun��o : Testar se uma palavra � pal�ndrome
// Autor :  Instituto Federal Farroupilha, Candel�ria, RS
// Data : 16/12/2015
// Se��o de Declara��es 
var
   i, qtde, metade : inteiro
   palavra, letra1, letra2 : caractere
   resultado : logico
inicio
// Se��o de Comandos 

// Sugest�es:
// - remover os espa�os
// - ignorar minusculos e maiusculos ?


   escreva("digite uma palavra: ")
   leia(palavra)
   
   qtde := compr(palavra)
   
   metade := int( qtde / 2 );

   resultado := VERDADEIRO
   para i := 1 ate metade faca
        // le uma letra do inicio ate a metade
        letra1 := copia(palavra, i, 1)
        // le uma letra do fim ate a metade
        letra2 := copia(palavra, qtde-i+1, 1)

        se (letra1 <> letra2) entao
           resultado := FALSO
        fimse
   fimpara
   
   
   se resultado entao
      escreval("palavra � palindrome!")
   senao
      escreval("palavra N�O � palindrome")
   fimse
   
   escreval("")
   escreval("*****************************")
   escreval("")

   // outra forma de fazer o la�o de repeti��o, usando ENQUANTO...
   escreval("refazendo novamente a compara��o com ENQUANTO...")
   escreval("pode reduzir as intera��es olhando a var resultado")
   i := 1
   resultado := VERDADEIRO
   enquanto (i <= metade) e (resultado) faca
        letra1 := copia(palavra, i, 1)
        letra2 := copia(palavra, qtde-i+1, 1)
        se (letra1 = letra2) entao
           i := i + 1
        senao
           resultado := FALSO
        fimse
   fimenquanto
   se resultado entao
      escreva("palavra � palindrome!")
   senao
      escreva("palavra N�O � palindrome")
   fimse



fimalgoritmo

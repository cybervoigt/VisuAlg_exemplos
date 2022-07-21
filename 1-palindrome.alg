algoritmo "PALINDROME"
// Disciplina   : [Técnico de Informática - Programação 1]
// Professor   : Ricardo Voigt
// Função : Testar se uma palavra é palíndrome
// Autor :  Instituto Federal Farroupilha, Candelária, RS
// Data : 16/12/2015
// Seção de Declarações 
var
   i, qtde, metade : inteiro
   palavra, letra1, letra2 : caractere
   resultado : logico
inicio
// Seção de Comandos 

// Sugestões:
// - remover os espaços
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
      escreval("palavra é palindrome!")
   senao
      escreval("palavra NÃO é palindrome")
   fimse
   
   escreval("")
   escreval("*****************************")
   escreval("")

   // outra forma de fazer o laço de repetição, usando ENQUANTO...
   escreval("refazendo novamente a comparação com ENQUANTO...")
   escreval("pode reduzir as interações olhando a var resultado")
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
      escreva("palavra é palindrome!")
   senao
      escreva("palavra NÃO é palindrome")
   fimse



fimalgoritmo

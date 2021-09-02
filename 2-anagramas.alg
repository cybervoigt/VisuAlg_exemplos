Algoritmo "Anagramas"
// Disciplna   : Programação I
// Professor   : Ricardo Voigt
// Descrição   : Calcula quantos anagramas possíveis a partir de uma palavra
// Autor(a)    : Ricardo Voigt
// Data atual  : 14/12/2015
// Fonte: pt.wikipedia.org/wiki/Anagrama

   funcao fatorial(n: inteiro) : real
   var
     x : inteiro
     r : real
   inicio
      r := 1
      para x := 2 ate n faca
        r := r * x
      fimpara
      retorne r
   fimfuncao

Var
// Seção de Declarações das variáveis 

   v1 : vetor [1..100] de caractere
   v2 : vetor [1..100] de inteiro
   qtdeLetras, qtdeV1, conta1, conta2 : inteiro
   qtdeRepeticoes, resultado : real
   palavra, letra1,letra2 : caractere
   achou : logico
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva("digite uma palavra: ")
   leia(palavra)
   
   // pego o tamanho da palavra digitada
   qtdeLetras := compr(palavra)

   // variavel q vai controlar a qtde de letras/posições dentro do vetor V1
   // V1 vai guardar a lista (sem repetição) das letras contidas na palavra!
   qtdeV1 := 0

   // vamos "varrer" a palavra e analisar letra por letra
   para conta1 := 1 ate qtdeLetras faca
        letra1 := copia(palavra, conta1, 1)

        // verificar se a letra ja se encontra no vetor v1
        achou := FALSO
        conta2 := 1
        enquanto (conta2 <= qtdeV1) e (nao achou) faca
          letra2 := v1[conta2]
          se (letra1 = letra2) entao
             achou := VERDADEIRO
          senao
             conta2 := conta2 + 1
          fimse
        fimenquanto
        // nao achou no v1, entao inclui a letra no v1 em uma nova posição
        se (nao achou) entao
           qtdeV1 := qtdeV1 + 1
           v1[qtdeV1] := letra1
        fimse

   fimpara


   // Exemplo: palavra TESTE
   // V1 = | T | E | S |   -> valores do vetor v1
   //      | 1 | 2 | 3 |   -> posição de cada valor no vetor



   // agora vamos contar quantas repetições tem cada letra da palavra
   para conta1 := 1 ate qtdeV1 faca
        letra1 := v1[conta1]
        // inicializo em ZERO o contador de repetições da letra
        v2[conta1] := 0;
        // agora procuro na palavra quantas vezes tem essa letra contida no vetor v1
        para conta2 := 1 ate qtdeLetras faca
             letra2 := copia(palavra, conta2, 1)
             se (letra1 = letra2) entao
                // conta/incrementa a qtde de vezes q esta letra aparece na palavra
                v2[conta1] := v2[conta1] + 1
             fimse
        fimpara
   fimpara


   // agora tenho condições de saber a qtde de repetição de cada letra...
   escreval("analisando letras repetidas:")
   qtdeRepeticoes := 1
   para conta1 := 1 ate qtdeV1 faca
        se (v2[conta1] > 1) entao

           escreval("letra repetida ", v1[conta1], " qtde de repetições: ", v2[conta1])

           qtdeRepeticoes := qtdeRepeticoes * fatorial( v2[conta1] )
        fimse
   fimpara
   


   // calcula a qtde de anagramas...
   resultado := fatorial(qtdeLetras)

   se (qtdeRepeticoes = 1) entao
       escreval("nenhuma letra repetida foi encontrada!")
   senao
      resultado := resultado / qtdeRepeticoes;
   fimse

   escreval("A quantidade de anagramas da palavra ", palavra, " é: ", resultado)

Fimalgoritmo

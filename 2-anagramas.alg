Algoritmo "Anagramas"
// Disciplna   : Programa��o I
// Professor   : Ricardo Voigt
// Descri��o   : Calcula quantos anagramas poss�veis a partir de uma palavra
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
// Se��o de Declara��es das vari�veis 

   v1 : vetor [1..100] de caractere
   v2 : vetor [1..100] de inteiro
   qtdeLetras, qtdeV1, conta1, conta2 : inteiro
   qtdeRepeticoes, resultado : real
   palavra, letra1,letra2 : caractere
   achou : logico
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva("digite uma palavra: ")
   leia(palavra)
   
   // pego o tamanho da palavra digitada
   qtdeLetras := compr(palavra)

   // variavel q vai controlar a qtde de letras/posi��es dentro do vetor V1
   // V1 vai guardar a lista (sem repeti��o) das letras contidas na palavra!
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
        // nao achou no v1, entao inclui a letra no v1 em uma nova posi��o
        se (nao achou) entao
           qtdeV1 := qtdeV1 + 1
           v1[qtdeV1] := letra1
        fimse

   fimpara


   // Exemplo: palavra TESTE
   // V1 = | T | E | S |   -> valores do vetor v1
   //      | 1 | 2 | 3 |   -> posi��o de cada valor no vetor



   // agora vamos contar quantas repeti��es tem cada letra da palavra
   para conta1 := 1 ate qtdeV1 faca
        letra1 := v1[conta1]
        // inicializo em ZERO o contador de repeti��es da letra
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


   // agora tenho condi��es de saber a qtde de repeti��o de cada letra...
   escreval("analisando letras repetidas:")
   qtdeRepeticoes := 1
   para conta1 := 1 ate qtdeV1 faca
        se (v2[conta1] > 1) entao

           escreval("letra repetida ", v1[conta1], " qtde de repeti��es: ", v2[conta1])

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

   escreval("A quantidade de anagramas da palavra ", palavra, " �: ", resultado)

Fimalgoritmo

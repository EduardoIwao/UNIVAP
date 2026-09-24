Algoritmo "10"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max1 = 4
max2 = 4

Var
matriz: vetor[1..max1, 1..max2] de inteiro
linha, coluna, pares: inteiro

Inicio
escreval("|=| PROGRAMA INICIALIZADO |=|")


// Laço para computar dados
para linha de 1 ate max1 faca
     para coluna de 1 ate max2 faca
          escreval("Informe o valor [", linha, "][", coluna, "]:")
          leia(matriz[linha, coluna])
          se matriz[linha,coluna]%2 = 0 entao
             pares <- pares + 1
          fimse

     fimpara
fimpara

escreval("|=| SAÍDA DE DADOS |=|")
escreval("Pares Registrados:",pares)

Fimalgoritmo
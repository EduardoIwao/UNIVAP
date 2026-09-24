Algoritmo "8"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max1 = 3
max2 = 3

Var
matriz: vetor[1..max1, 1..max2] de inteiro
linha, coluna, soma: inteiro

Inicio
escreval("|=| PROGRAMA INICIALIZADO |=|")

soma <- 0

// Laço para computar dados
para linha de 1 ate max1 faca
     para coluna de 1 ate max2 faca
          escreval("Informe o valor [", linha, "][", coluna, "]:")
          leia(matriz[linha, coluna])
     fimpara
fimpara

escreval("|=| SAÍDA DE DADOS |=|")

// Laço para calcular a diagonal secundária
para linha de 1 ate max1 faca
     para coluna de 1 ate max2 faca
          se linha + coluna = (max1+1) entao
               soma <- soma + matriz[linha, coluna]
          fimse
     fimpara
fimpara

escreval("Soma da diagonal secundaria: ", soma)

Fimalgoritmo
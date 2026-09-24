Algoritmo "6"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max1 = 2
max2 = 2

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
          soma <- soma + matriz[linha, coluna]
     fimpara
fimpara

escreval("|=| SAÍDA DE DADOS |=|")
escreval("Soma dos elementos: ", soma)

Fimalgoritmo
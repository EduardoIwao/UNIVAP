Algoritmo "9"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max1 = 2
max2 = 3

Var
matriz: vetor[1..max1, 1..max2] de inteiro
linha, coluna, maior: inteiro

Inicio
escreval("|=| PROGRAMA INICIALIZADO |=|")


// Laço para computar dados
para linha de 1 ate max1 faca
     para coluna de 1 ate max2 faca
          escreval("Informe o valor [", linha, "][", coluna, "]:")
          leia(matriz[linha, coluna])
          se (linha = 1) e (coluna = 1) entao
             maior <- matriz[linha,coluna]
          senao
             se maior < matriz[linha,coluna] entao
                maior <- matriz[linha,coluna]
             fimse
          fimse
          
     fimpara
fimpara

escreval("|=| SAÍDA DE DADOS |=|")
escreval("Maior:", maior)

Fimalgoritmo
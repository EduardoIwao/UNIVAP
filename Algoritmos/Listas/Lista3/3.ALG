Algoritmo "3"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max = 8 // Variável para manutenção dos dados máximos

Var
vetorA: vetor[1..max] de inteiro
ctd: inteiro // Variável contador
maior,menor: inteiro
Inicio
escreval("|=| PROGRAMA INICIALIZADO |=|")
// Laço para computar dados
para ctd de 1 ate max faca
     escreval("Informe o ", ctd, "° valor:")
     leia(vetorA[ctd])
     se ctd = 1 entao
        maior <- vetorA[ctd]
        menor <- vetorA[ctd]
     senao
          se maior < vetorA[ctd] entao
             maior <- vetorA[ctd]
          fimse
          se menor > vetorA[ctd] entao
             menor <- vetorA[ctd]
          fimse
     fimse
fimpara
escreval("|=| SAÍDA DE DADOS |=|")
escreval("Maior:",maior)
escreval("Menor:",menor)

Fimalgoritmo
Algoritmo "4"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max = 10 // Variável para manutenção dos dados máximos

Var
vetorA: vetor[1..max] de inteiro
ctd: inteiro // Variável contador
Inicio
escreval("|=| PROGRAMA INICIALIZADO |=|")
// Laço para computar dados
para ctd de 1 ate max faca
     escreval("Informe o ", ctd, "° valor:")
     leia(vetorA[ctd])
fimpara
escreval("|=| SAÍDA DE DADOS |=|")
//Laço para exibir dados
para ctd de 1 ate max faca
     se vetorA[ctd]%2 = 0 entao
        escreval(ctd,"° | ", vetorA[ctd])
     fimse
fimpara

Fimalgoritmo
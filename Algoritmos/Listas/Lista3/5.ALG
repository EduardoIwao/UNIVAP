Algoritmo "5"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 17/09/2026

const
max = 15 // Variável para manutenção dos dados máximos

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
para ctd de 2 ate max passo 2 faca
     escreval(ctd,"° | ", vetorA[ctd])
fimpara

Fimalgoritmo
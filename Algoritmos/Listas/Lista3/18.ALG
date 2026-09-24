Algoritmo "18"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026
const
max = 5 //Definir o número de dados
Var
notas: vetor[1..max] de real
i,j: inteiro
aux: real

Inicio
escreval("|=|PROGRAMA INICIALIZADO|=|")
//Laço para registrar dados
para i de 1 ate max faca
     escreval("Informe a ",i,"° nota:")
     leia(notas[i])
fimpara
//Laço para o Bubble Sort
para i de 1 ate max faca
     para j de 1 ate (max-1) faca
          se notas[j] > notas[j+1] entao
             aux <- notas[j]
             notas[j] <- notas[j+1]
             notas[j+1] <- aux
          fimse
     fimpara
fimpara

escreval("|=|SAÍDA DE DADOS|=|")
//Laço para exibir dados
para i de 1 ate max faca
     escreval(i,"° |",notas[i])
fimpara
Fimalgoritmo
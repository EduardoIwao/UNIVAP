Algoritmo "16"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026
const
max = 6 //Definir o número de dados
Var
numeros: vetor[1..max] de inteiro
i,j,aux: inteiro

Inicio
escreval("|=|PROGRAMA INICIALIZADO|=|")
//Laço para registrar dados
para i de 1 ate max faca
     escreval("Informe o ",i,"° numero:")
     leia(numeros[i])
fimpara
//Laço para o Bubble Sort
para i de 1 ate max faca
     para j de 1 ate (max-1) faca
          se numeros[j] > numeros[j+1] entao
             aux <- numeros[j]
             numeros[j] <- numeros[j+1]
             numeros[j+1] <- aux
          fimse
     fimpara
fimpara

escreval("|=|SAÍDA DE DADOS|=|")
//Laço para exibir dados
para i de 1 ate max faca
     escreval(i,"° |",numeros[i])
fimpara
Fimalgoritmo
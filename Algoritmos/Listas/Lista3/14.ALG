Algoritmo "14"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026
const
max = 3 //Definir o número de dados

Tipo
Cliente = registro
        nome: caractere
        idade: inteiro
        cidade: caractere
fimregistro

Var
cliente: vetor[1..max] de Cliente
cidade: caractere
i: inteiro

Inicio
escreval("|=|PROGRAMA INICIALIZADO|=|")
//Laço para registrar dados
para i de 1 ate max faca
     escreval("Informe o nome do cliente:")
     leia(cliente[i].nome)
     escreval("Informe a idade do idade:")
     leia(cliente[i].idade)
     escreval("Informe a cidade (COM CAPSLOCK):")
     leia(cliente[i].cidade)
fimpara
escreval("Informe a cidade para a busca (COM CAPSLOCK):")
leia(cidade)
escreval("|=|CLIENTES NA CIDADE|=|")
para i de 1 ate max faca
     se cidade = cliente[i].cidade entao
        escreval("ID:",i," | Nome:",cliente[i].nome)
     fimse
fimpara
Fimalgoritmo
Algoritmo "13"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026
const
max = 4 //Definir o número de dados

Tipo
Produto = registro
        nome: caractere
        preco: real
        quantidade: inteiro
fimregistro

Var
produto: vetor[1..max] de Produto
totalBruto: real
i: inteiro

Inicio
escreval("|=|PROGRAMA INICIALIZADO|=|")
//Laço para registrar dados
para i de 1 ate max faca
     escreval("Informe o nome do produto:")
     leia(produto[i].nome)
     escreval("Informe o preço do produto:")
     leia(produto[i].preco)
     escreval("Informe a quantidade do produto:")
     leia(produto[i].quantidade)
     totalBruto <- totalBruto + (produto[i].preco*produto[i].quantidade)
fimpara
escreval("|=|ESTOQUE|=|")
//Laço para exibir dados
para i de 1 ate max faca
     escreval("ID:",i," | Nome:",produto[i].nome," | Valor Unitário:",produto[i].preco," | Quantidade:",produto[i].quantidade," | Total:R$",(produto[i].quantidade*produto[i].preco))
fimpara
escreval("TOTAL EM PRODUTOS: R$",totalBruto)
Fimalgoritmo
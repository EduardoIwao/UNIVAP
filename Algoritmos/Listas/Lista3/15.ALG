Algoritmo "15"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026
const
max = 5 //Definir o número de dados

Tipo
Livro = registro
        titulo: caractere
        autor: caractere
        ano: inteiro
fimregistro

Var
livro: vetor[1..max] de Livro
i: inteiro

Inicio
escreval("|=|PROGRAMA INICIALIZADO|=|")
//Laço para registrar dados
para i de 1 ate max faca
     escreval("Informe o titulo do livro:")
     leia(livro[i].titulo)
     escreval("Informe o autor:")
     leia(livro[i].autor)
     escreval("Informe o ano de publicação:")
     leia(livro[i].ano)
fimpara
escreval("|=|PUBLICADOS APÓS 2000|=|")
//Laço para exibir dados
para i de 1 ate max faca
     se livro[i].ano > 2000 entao
        escreval("ID:",i," | Nome:",livro[i].titulo," | Autor:",livro[i].autor)
     fimse
fimpara
Fimalgoritmo
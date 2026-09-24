Algoritmo "19"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026

Funcao calculo_fatorial(n: Inteiro): Inteiro
Inicio
   se (n = 0) entao
      retorne 1
   senao
      retorne n * calculo_fatorial(n - 1)
   fimse
fimfuncao

Var
   N: inteiro

Inicio
   escreval("|=|PROGRAMA INICIALIZADO|=|")
   escreval("Informe o número para calcular o fatorial:")
   leia(N)
   escreval(calculo_fatorial(N))
Fimalgoritmo
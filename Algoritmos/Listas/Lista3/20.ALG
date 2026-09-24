Algoritmo "20"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026

Funcao fibonacci(n: Inteiro): Inteiro
Inicio
   se (n = 0) entao
      retorne 0
   senao
      se (n = 1) entao
         retorne 1
      senao
         retorne fibonacci(n - 1) + fibonacci(n - 2)
      fimse
   fimse
fimfuncao

Var
termo: inteiro

Inicio
   escreval("|=|PROGRAMA INICIALIZADO|=|")
   termo <- 10 //Declarei aqui já que não é para ser declarado pelo usuario
   escreval(fibonacci(termo))
Fimalgoritmo
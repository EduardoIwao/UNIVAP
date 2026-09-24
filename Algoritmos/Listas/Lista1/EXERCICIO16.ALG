Algoritmo "Exercicio16"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   N: inteiro
   fatorial: inteiro
   x: inteiro
Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
   
   escreval("Informe o número para o fatorial:")
   leia(N)

   escreval("|=|========|=|RESULTADO|=|========|=|")
   fatorial <- 1
   para x de 1 ate N faca
        fatorial <- fatorial * x
   fimpara
   escreval("Fatorial:",fatorial)
Fimalgoritmo
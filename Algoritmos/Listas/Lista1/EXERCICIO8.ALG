Algoritmo "Exercicio8"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   n1: real
   menor: real
   x: inteiro

Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")

   para x de 1 ate 5 faca

      escreval("Informe o ", x, "° número:")
      leia(n1)
      se x = 1 entao
         menor <- n1
      senao
           se menor > n1 entao
              menor <- n1
           fimse
      fimse
   fimpara

   escreval("|=|========|=|RESULTADO|=|========|=|")
   escreval("O menor número informado foi: ", menor)

Fimalgoritmo
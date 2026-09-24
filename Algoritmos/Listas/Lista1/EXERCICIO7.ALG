Algoritmo "Exercicio7"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   n1: real
   maior: real
   x: inteiro
   
Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")

   para x de 1 ate 5 faca

      escreval("Informe o ", x, "° número:")
      leia(n1)

      se x = 1 entao
         maior <- n1
      senao se n1 > maior entao
         maior <- n1
      fimse
   fimpara

   escreval("|=|========|=|RESULTADO|=|========|=|")
   escreval("O maior número informado foi: ", maior)
Fimalgoritmo
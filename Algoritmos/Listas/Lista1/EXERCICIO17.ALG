Algoritmo "Exercicio17"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   N: inteiro
   P: inteiro
   I: inteiro
   x: inteiro
Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
   para x de 1 ate 10 faca
        Escreval("Informe o ",x,"° número:")
        leia(N)
        se N%2 = 0 entao
           P <- P + 1
        senao
             I <- I + 1
        fimse
   fimpara

   escreval("|=|========|=|RESULTADO|=|========|=|")
   escreval("Números PARES registrados:",P)
   escreval("Números ÍMPARES registrados:",I)
Fimalgoritmo
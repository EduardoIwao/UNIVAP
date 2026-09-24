Algoritmo "Exercicio14"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   N: inteiro
   x: inteiro
Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
   
   escreval("Informe o número:")
   leia(N)

   escreval("|=|========|=|RESULTADO|=|========|=|")
   enquanto x < N faca
            se (x > 1) entao
               escreval(x)
            fimse
            x <- x + 1
   fimenquanto
   //Professor, o exercicio pede numeros entre 1 e N, então
   // suponhamos que n é 10, os numeros entre 1 e N são res
   // pectivamente {2,3,4,5,6,7,8,9}
Fimalgoritmo
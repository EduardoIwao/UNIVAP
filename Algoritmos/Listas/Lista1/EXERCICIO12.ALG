Algoritmo "Exercicio12"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   anoNascimento:inteiro
   anoAtual:inteiro

Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
   escreval("Informe o ano atual:")
   leia(anoAtual)
   escreva("Informe o seu ano de nascimento:")
   leia(anoNascimento)
   se (anoAtual-anoNascimento) >= 16 entao
      escreval("O usuário já tem idade sufuciente para votar!!")
   senao
      escreval("O usuário não tem idade sufuciente para votar!!")
   fimse
Fimalgoritmo
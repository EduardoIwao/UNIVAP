Algoritmo "Exercicio13"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   altura: real
   peso: real
   imc: real

Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")

   escreval("Informe sua altura (m):")
   leia(altura)

   escreval("Informe seu peso (kg):")
   leia(peso)

   imc <- peso / (altura * altura)

   escreval("|=|========|=|RESULTADO|=|========|=|")
   escreval("Seu IMC é: ", imc)

   se imc < 18.5 entao
      escreval("Faixa: ABAIXO DO PESO")
   senao
      se imc < 25 entao
         escreval("Faixa: PESO NORMAL")
      senao
         se imc < 30 entao
            escreval("Faixa: SOBREPESO")
         senao
            se imc < 35 entao
               escreval("Faixa: OBESIDADE GRAU I")
            senao
               se imc < 40 entao
                  escreval("Faixa: OBESIDADE GRAU II")
               senao
                  escreval("Faixa: OBESIDADE GRAU III")
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo
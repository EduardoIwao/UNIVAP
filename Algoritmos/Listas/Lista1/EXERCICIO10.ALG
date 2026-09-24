Algoritmo "Exercicio10"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   dia: inteiro

Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")

   escreval("Informe um dia (1-7)")
   leia(dia)

   se (dia >= 1) e (dia <= 7) entao
      se dia = 1 entao
         escreval("Domingo")
      senao
           se dia = 2 entao
              escreval("Segunda-Feira")
           senao
                se dia = 3 entao
                   escreval("Terça-Feira")
                senao
                     se dia = 4 entao
                        escreval("Quarta-Feira")
                     senao
                          se dia = 5 entao
                             escreval("Quinta-Feira")
                          senao
                               se dia = 6 entao
                                  escreval("Sexta-Feira")
                               senao
                                    escreval("Sábado")
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      fimse
   senao
      escreval("Dia Inválido")
   fimse
Fimalgoritmo
Algoritmo "Exercicio11"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   mes: inteiro

Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")

   escreval("Informe um mes (1-12)")
   leia(mes)

   se (mes >= 1) e (mes <= 12) entao
      se mes = 1 entao
         escreval("Janeiro")
      senao
           se mes = 2 entao
              escreval("Fevereiro")
           senao
                se mes = 3 entao
                   escreval("Março")
                senao
                     se mes = 4 entao
                        escreval("Abril")
                     senao
                          se mes = 5 entao
                             escreval("Maio")
                          senao
                               se mes = 6 entao
                                  escreval("Junho")
                               senao
                                    se mes = 7 entao
                                       escreval("Julho")
                                    senao
                                         se mes = 8 entao
                                            escreval("Agosto")
                                         senao
                                              se mes = 9 entao
                                                 escreval("Setembro")
                                              senao
                                                   se mes = 10 entao
                                                      escreval("Outubro")
                                                   senao
                                                        se mes = 11 entao
                                                           escreval("Novembro")
                                                        senao
                                                             escreval("Dezembro")
                                                        fimse
                                                   fimse
                                              fimse
                                         fimse
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      fimse
   senao
      escreval("Mes Inválido")
   fimse

Fimalgoritmo
Algoritmo "Exercicio6"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280
Var
idade: inteiro
Inicio
escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
escreval("Informe a idade:")
leia(idade)
escreval("|=|========|=|RESULTADO|=|========|=|")
se idade < 18 entao
     escreval("O usuário informado é MENOR DE IDADE!!")
senao
     se (idade <60) e (idade >= 18) entao
        escreval("O usuário informado é MAIOR DE IDADE!!")
     senao
        escreval("O usuário informado é IDOSO!!")
     fimse
fimse
Fimalgoritmo
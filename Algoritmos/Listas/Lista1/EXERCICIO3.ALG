Algoritmo "Exercicio3"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280
Var
n1: real
n2: real
media: real
Inicio
escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
escreval("Informe a primeira nota:")
leia(n1)
escreval("Informe a segunda nota:")
leia(n2)
escreval("|=|========|=|RESULTADOS|=|========|=|")
media <- (n1+n2)/2
se media >= 7 entao
   escreval("Aprovado!! Média:",media)
senao
    escreval("Reprovado!! Média:",media)
fimse
Fimalgoritmo
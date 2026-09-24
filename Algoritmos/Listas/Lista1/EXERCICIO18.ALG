Algoritmo "Exercicio18"
// Aluno: Eduardo Iwao Garcia Reis Kunihiro
// Turma: 2UNB
// RA: 02610280

Var
   x: inteiro
   nome: caractere
   idade: inteiro
   nomeVelho: caractere
   idadeVelho: inteiro
   nomeNovo: caractere
   idadeNovo: inteiro
   media: inteiro
Inicio

   escreval("|=|========|=|PROGRAMA INICIALIZADO|=|========|=|")
   para x de 1 ate 5 faca
        Escreval("Informe o nome da ",x,"° pessoa")
        leia(nome)
        Escreval("Informe a idade da ",x,"° pessoa")
        leia(idade)
        media <- media + idade
        se x = 1 entao
           idadeVelho <- idade
           idadeNovo <- idade
        senao
           se idadeVelho < idade entao
              idadeVelho <- idade
              nomeVelho <- nome
           fimse
           se idadeNovo > idade entao
              idadeNovo <- idade
              nomeNovo <- nome
           fimse
        fimse
   fimpara

   escreval("|=|========|=|RESULTADO|=|========|=|")
   escreval("Nome Pessoa mais Velha:",nomeVelho)
   escreval("Idade Pessoa mais Velha",idadeVelho)
   escreval("Nome Pessoa mais Nova:",nomeNovo)
   escreval("Idade Pessa mais Nova:",idadeNovo)
   escreval("Média entre as idades:",media/5)
Fimalgoritmo
Algoritmo "12"
// ALGORITMOS E PROGRAMAÇÃO
// ANDRÉ
// Descrição   : Lista de Exercícios 3 (Algoritmos Complexos)
// Autor(a)    : EDUARDO IWAO GARCIA REIS KUNIHIRO
// Data atual  : 19/09/2026

const
max = 3

Tipo
Funcionarios = registro
       nome: caractere
       cargo: caractere
       salario: real
fimregistro

Var
funcionario: vetor[1..max] de Funcionarios
i, maior: inteiro
aux: real

Inicio
escreval("|=| PROGRAMA INICIALIZADO |=|")


// Laço para computar dados
para i de 1 ate max faca
     escreval("Informe o nome do funcionario:")
     leia(funcionario[i].nome)
     escreval("Informe o cargo do funcionario:")
     leia(funcionario[i].cargo)
     escreval("Informe o salario do funcionario:")
     leia(funcionario[i].salario)
     se i = 1 entao
        maior <- i
        aux <- funcionario[i].salario
     senao
          se aux < funcionario[i].salario entao
             maior <- i
             aux <- funcionario[i].salario
          fimse
     fimse

fimpara


escreval("|=| SAÍDA DE DADOS |=|")
escreval("|=| MAIOR SALARIO |=|")
escreval("Nome:",funcionario[maior].nome)
escreval("Cargo:",funcionario[maior].cargo)
escreval("Salário:",funcionario[maior].salario)
Fimalgoritmo
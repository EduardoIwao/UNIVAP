algoritmo "Desafio1"
// ============================================================================
// ALUNO: EDUARDO IWAO GARCIA REIS KUNIHIRO
// RA: 02610280
// TURMA:2UNB
// TEMA: 1
// DATA:10/10/2026
// PROFESSOR: ANDRE
// ============================================================================
var
   // ---------- "constantes" (valores fixos apos a inicializacao) ----------
   PONTOS_VITORIA: inteiro
   PONTOS_EMPATE: inteiro
   PONTOS_DERROTA: inteiro
   MAX_EQUIPES: inteiro        // deve ser igual ao limite dos vetores (10)
   RES_VITORIA: inteiro        // codigos internos de resultado de uma partida
   RES_EMPATE: inteiro
   RES_DERROTA: inteiro

   // ---------- vetor de registros (campos paralelos) ----------
   eqCodigo: vetor[1..10] de inteiro
   eqNome: vetor[1..10] de caractere
   eqCapitao: vetor[1..10] de caractere
   eqVitorias: vetor[1..10] de inteiro
   eqEmpates: vetor[1..10] de inteiro
   eqDerrotas: vetor[1..10] de inteiro
   eqPontosMarc: vetor[1..10] de inteiro
   eqPontosSofr: vetor[1..10] de inteiro
   eqSaldo: vetor[1..10] de inteiro
   eqPontuacao: vetor[1..10] de inteiro

   // ---------- matrizes de confrontos ----------
   matJogos: vetor[1..10,1..10] de inteiro
   matPontosPro: vetor[1..10,1..10] de inteiro

   // ---------- estado geral do campeonato ----------
   qtdEquipes: inteiro
   totalPartidas: inteiro
   opcao: inteiro

// ============================================================================
// SUB-ROTINAS
// ============================================================================

// Define as constantes e zera todos os dados (chamado uma vez no inicio)
procedimento inicializarSistema
var
   i, j: inteiro
inicio
   PONTOS_VITORIA <- 3
   PONTOS_EMPATE <- 1
   PONTOS_DERROTA <- 0
   MAX_EQUIPES <- 10
   RES_VITORIA <- 1
   RES_EMPATE <- 2
   RES_DERROTA <- 3
   qtdEquipes <- 0
   totalPartidas <- 0
   para i de 1 ate MAX_EQUIPES faca
      eqCodigo[i] <- 0
      eqNome[i] <- ""
      eqCapitao[i] <- ""
      eqVitorias[i] <- 0
      eqEmpates[i] <- 0
      eqDerrotas[i] <- 0
      eqPontosMarc[i] <- 0
      eqPontosSofr[i] <- 0
      eqSaldo[i] <- 0
      eqPontuacao[i] <- 0
      // repeticao aninhada: zera a linha i das matrizes
      para j de 1 ate MAX_EQUIPES faca
         matJogos[i,j] <- 0
         matPontosPro[i,j] <- 0
      fimpara
   fimpara
fimprocedimento

// RECURSIVIDADE: contagem regressiva para o inicio do campeonato.
// Caso-base: n <= 0 (encerra e exibe a mensagem final).
// Chamada recursiva: contagemRegressiva(n - 1), sempre se aproximando do caso-base.
procedimento contagemRegressiva(n: inteiro)
inicio
   se n <= 0 entao
      escreval("")
      escreval("CAMPEONATO INICIADO!")
   senao
      escreva(n, "... ")
      contagemRegressiva(n - 1)
   fimse
fimprocedimento

// Escreve um texto e completa com espacos ate a largura informada
procedimento escreverPad(texto: caractere; largura: inteiro)
var
   i: inteiro
inicio
   escreva(texto)
   para i de compr(texto) + 1 ate largura faca
      escreva(" ")
   fimpara
fimprocedimento

// Funcao: um texto e valido se tiver ao menos um caractere diferente de espaco
funcao nomeValido(texto: caractere): logico
var
   i: inteiro
   achouLetra: logico
inicio
   achouLetra <- falso
   para i de 1 ate compr(texto) faca
      se copia(texto, i, 1) <> " " entao
         achouLetra <- verdadeiro
      fimse
   fimpara
   retorne achouLetra
fimfuncao

// Funcao: le um inteiro >= 0, repetindo ate o usuario digitar um valor valido
funcao lerNaoNegativo(mensagem: caractere): inteiro
var
   valor: inteiro
inicio
   repita
      escreva(mensagem)
      leia(valor)
      se valor < 0 entao
         escreval("Valor invalido! Informe um numero maior ou igual a zero.")
      fimse
   ate valor >= 0
   retorne valor
fimfuncao

// Funcao de busca: recebe o codigo por parametro e retorna o indice da equipe
// no vetor (ou 0 se nao encontrada)
funcao localizarEquipe(codigo: inteiro): inteiro
var
   i, posicao: inteiro
inicio
   posicao <- 0
   i <- 1
   enquanto (i <= qtdEquipes) e (posicao = 0) faca
      se eqCodigo[i] = codigo entao
         posicao <- i
      fimse
      i <- i + 1
   fimenquanto
   retorne posicao
fimfuncao

// Funcao: saldo de pontos = marcados - sofridos
funcao calcularSaldo(marcados: inteiro; sofridos: inteiro): inteiro
inicio
   retorne marcados - sofridos
fimfuncao

// Funcao: pontuacao no campeonato a partir de vitorias, empates e derrotas
funcao calcularPontuacao(vitorias: inteiro; empates: inteiro; derrotas: inteiro): inteiro
inicio
   retorne vitorias * PONTOS_VITORIA + empates * PONTOS_EMPATE + derrotas * PONTOS_DERROTA
fimfuncao

// Procedimento com PASSAGEM POR REFERENCIA (var): o resultado calculado aqui
// precisa voltar para quem chamou (res1 e res2 sao alterados).
procedimento determinarResultado(pontos1: inteiro; pontos2: inteiro; var res1: inteiro; var res2: inteiro)
inicio
   se pontos1 > pontos2 entao
      res1 <- RES_VITORIA
      res2 <- RES_DERROTA
   senao
      se pontos2 > pontos1 entao
         res1 <- RES_DERROTA
         res2 <- RES_VITORIA
      senao
         res1 <- RES_EMPATE
         res2 <- RES_EMPATE
      fimse
   fimse
fimprocedimento

// Atualiza as estatisticas de UMA equipe (idx) apos uma partida
procedimento atualizarEquipe(idx: inteiro; marcados: inteiro; sofridos: inteiro; resultado: inteiro)
inicio
   eqPontosMarc[idx] <- eqPontosMarc[idx] + marcados
   eqPontosSofr[idx] <- eqPontosSofr[idx] + sofridos
   escolha resultado
      caso 1
         eqVitorias[idx] <- eqVitorias[idx] + 1
      caso 2
         eqEmpates[idx] <- eqEmpates[idx] + 1
      outrocaso
         eqDerrotas[idx] <- eqDerrotas[idx] + 1
   fimescolha
   eqSaldo[idx] <- calcularSaldo(eqPontosMarc[idx], eqPontosSofr[idx])
   eqPontuacao[idx] <- calcularPontuacao(eqVitorias[idx], eqEmpates[idx], eqDerrotas[idx])
fimprocedimento

// Cadastro de equipe com todas as validacoes exigidas
procedimento cadastrarEquipe
var
   codigo, posicao: inteiro
   nome, capitao: caractere
inicio
   se qtdEquipes >= MAX_EQUIPES entao
      escreval("Capacidade maxima atingida (", MAX_EQUIPES, " equipes). Cadastro nao permitido.")
   senao
      escreva("Codigo da equipe (inteiro positivo): ")
      leia(codigo)
      se codigo <= 0 entao
         escreval("Codigo invalido! Deve ser um numero inteiro maior que zero.")
      senao
         se localizarEquipe(codigo) <> 0 entao
            escreval("Codigo duplicado! Ja existe uma equipe com o codigo ", codigo, ".")
         senao
            escreva("Nome da equipe: ")
            leia(nome)
            se nao nomeValido(nome) entao
               escreval("Nome da equipe nao pode ser vazio!")
            senao
               escreva("Nome do capitao: ")
               leia(capitao)
               se nao nomeValido(capitao) entao
                  escreval("Nome do capitao nao pode ser vazio!")
               senao
                  qtdEquipes <- qtdEquipes + 1
                  posicao <- qtdEquipes
                  eqCodigo[posicao] <- codigo
                  eqNome[posicao] <- nome
                  eqCapitao[posicao] <- capitao
                  // estatisticas inicializadas
                  eqVitorias[posicao] <- 0
                  eqEmpates[posicao] <- 0
                  eqDerrotas[posicao] <- 0
                  eqPontosMarc[posicao] <- 0
                  eqPontosSofr[posicao] <- 0
                  eqSaldo[posicao] <- 0
                  eqPontuacao[posicao] <- 0
                  escreval("Equipe '", nome, "' cadastrada com sucesso!")
               fimse
            fimse
         fimse
      fimse
   fimse
fimprocedimento

// Exibe todas as informacoes de uma equipe (idx = posicao no vetor)
procedimento exibirEquipe(idx: inteiro)
inicio
   escreval("Codigo.............: ", eqCodigo[idx])
   escreval("Equipe.............: ", eqNome[idx])
   escreval("Capitao............: ", eqCapitao[idx])
   escreval("Vitorias...........: ", eqVitorias[idx])
   escreval("Empates............: ", eqEmpates[idx])
   escreval("Derrotas...........: ", eqDerrotas[idx])
   escreval("Pontos marcados....: ", eqPontosMarc[idx])
   escreval("Pontos sofridos....: ", eqPontosSofr[idx])
   escreval("Saldo de pontos....: ", eqSaldo[idx])
   escreval("Pontuacao..........: ", eqPontuacao[idx])
fimprocedimento

procedimento listarEquipes
var
   i: inteiro
inicio
   se qtdEquipes = 0 entao
      escreval("Nenhuma equipe cadastrada.")
   senao
      escreval("Cod  Equipe               Capitao")
      escreval("---------------------------------------------")
      para i de 1 ate qtdEquipes faca
         escreva(eqCodigo[i]:3, "  ")
         escreverPad(eqNome[i], 20)
         escreva(" ")
         escreverPad(eqCapitao[i], 20)
         escreval("")
      fimpara
   fimse
fimprocedimento

// Registro de partida: valida, define o resultado, atualiza equipes e matrizes
procedimento registrarPartida
var
   cod1, cod2, posA, posB, pts1, pts2, res1, res2: inteiro
inicio
   se qtdEquipes < 2 entao
      escreval("E necessario ter ao menos 2 equipes cadastradas para registrar uma partida.")
   senao
      escreva("Codigo da primeira equipe: ")
      leia(cod1)
      escreva("Codigo da segunda equipe: ")
      leia(cod2)
      posA <- localizarEquipe(cod1)
      posB <- localizarEquipe(cod2)
      se (posA = 0) ou (posB = 0) entao
         escreval("Partida nao registrada: uma das equipes (ou ambas) nao existe.")
      senao
         se posA = posB entao
            escreval("Partida nao registrada: uma equipe nao pode jogar contra ela propria.")
         senao
            pts1 <- lerNaoNegativo("Pontuacao da primeira equipe: ")
            pts2 <- lerNaoNegativo("Pontuacao da segunda equipe: ")
            determinarResultado(pts1, pts2, res1, res2)
            atualizarEquipe(posA, pts1, pts2, res1)
            atualizarEquipe(posB, pts2, pts1, res2)
            // matrizes de confrontos
            matJogos[posA,posB] <- matJogos[posA,posB] + 1
            matJogos[posB,posA] <- matJogos[posB,posA] + 1
            matPontosPro[posA,posB] <- matPontosPro[posA,posB] + pts1
            matPontosPro[posB,posA] <- matPontosPro[posB,posA] + pts2
            totalPartidas <- totalPartidas + 1
            escreval("Partida registrada: ", eqNome[posA], " ", pts1, " x ", pts2, " ", eqNome[posB])
            se res1 = RES_VITORIA entao
               escreval("Vencedor: ", eqNome[posA])
            senao
               se res2 = RES_VITORIA entao
                  escreval("Vencedor: ", eqNome[posB])
               senao
                  escreval("Resultado: EMPATE")
               fimse
            fimse
         fimse
      fimse
   fimse
fimprocedimento

procedimento consultarEquipe
var
   codigo, posicao: inteiro
inicio
   escreva("Codigo da equipe a consultar: ")
   leia(codigo)
   posicao <- localizarEquipe(codigo)
   se posicao = 0 entao
      escreval("Equipe nao localizada.")
   senao
      exibirEquipe(posicao)
   fimse
fimprocedimento

// Funcao: decide se a equipe 'b' (logo abaixo) deve subir acima da equipe 'a'.
// Criterios: 1) pontuacao 2) vitorias 3) saldo 4) pontos marcados
funcao deveTrocar(a: inteiro; b: inteiro): logico
var
   trocar: logico
inicio
   trocar <- falso
   se eqPontuacao[b] > eqPontuacao[a] entao
      trocar <- verdadeiro
   senao
      se eqPontuacao[b] = eqPontuacao[a] entao
         se eqVitorias[b] > eqVitorias[a] entao
            trocar <- verdadeiro
         senao
            se eqVitorias[b] = eqVitorias[a] entao
               se eqSaldo[b] > eqSaldo[a] entao
                  trocar <- verdadeiro
               senao
                  se eqSaldo[b] = eqSaldo[a] entao
                     se eqPontosMarc[b] > eqPontosMarc[a] entao
                        trocar <- verdadeiro
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   retorne trocar
fimfuncao

// Troca duas equipes de posicao: todos os campos + linhas/colunas das matrizes
procedimento trocarEquipes(a: inteiro; b: inteiro)
var
   k, auxInt: inteiro
   auxTxt: caractere
inicio
   auxInt <- eqCodigo[a]
   eqCodigo[a] <- eqCodigo[b]
   eqCodigo[b] <- auxInt

   auxTxt <- eqNome[a]
   eqNome[a] <- eqNome[b]
   eqNome[b] <- auxTxt

   auxTxt <- eqCapitao[a]
   eqCapitao[a] <- eqCapitao[b]
   eqCapitao[b] <- auxTxt

   auxInt <- eqVitorias[a]
   eqVitorias[a] <- eqVitorias[b]
   eqVitorias[b] <- auxInt

   auxInt <- eqEmpates[a]
   eqEmpates[a] <- eqEmpates[b]
   eqEmpates[b] <- auxInt

   auxInt <- eqDerrotas[a]
   eqDerrotas[a] <- eqDerrotas[b]
   eqDerrotas[b] <- auxInt

   auxInt <- eqPontosMarc[a]
   eqPontosMarc[a] <- eqPontosMarc[b]
   eqPontosMarc[b] <- auxInt

   auxInt <- eqPontosSofr[a]
   eqPontosSofr[a] <- eqPontosSofr[b]
   eqPontosSofr[b] <- auxInt

   auxInt <- eqSaldo[a]
   eqSaldo[a] <- eqSaldo[b]
   eqSaldo[b] <- auxInt

   auxInt <- eqPontuacao[a]
   eqPontuacao[a] <- eqPontuacao[b]
   eqPontuacao[b] <- auxInt

   // troca as LINHAS a e b das matrizes
   para k de 1 ate qtdEquipes faca
      auxInt <- matJogos[a,k]
      matJogos[a,k] <- matJogos[b,k]
      matJogos[b,k] <- auxInt
      auxInt <- matPontosPro[a,k]
      matPontosPro[a,k] <- matPontosPro[b,k]
      matPontosPro[b,k] <- auxInt
   fimpara
   // troca as COLUNAS a e b das matrizes
   para k de 1 ate qtdEquipes faca
      auxInt <- matJogos[k,a]
      matJogos[k,a] <- matJogos[k,b]
      matJogos[k,b] <- auxInt
      auxInt <- matPontosPro[k,a]
      matPontosPro[k,a] <- matPontosPro[k,b]
      matPontosPro[k,b] <- auxInt
   fimpara
fimprocedimento

// ORDENACAO: Bubble Sort (a cada passada o pior colocado "afunda" para o fim)
procedimento ordenarClassificacao
var
   i, j: inteiro
inicio
   para i de 1 ate qtdEquipes - 1 faca
      para j de 1 ate qtdEquipes - i faca
         se deveTrocar(j, j + 1) entao
            trocarEquipes(j, j + 1)
         fimse
      fimpara
   fimpara
fimprocedimento

procedimento exibirClassificacao
var
   i: inteiro
inicio
   se qtdEquipes = 0 entao
      escreval("Nenhuma equipe cadastrada.")
   senao
      ordenarClassificacao
      escreval("=================== CLASSIFICACAO GERAL ===================")
      escreval("Pos Equipe                 P    V    E    D   PM   PS   SG")
      escreval("-----------------------------------------------------------")
      para i de 1 ate qtdEquipes faca
         escreva(i:3, " ")
         escreverPad(eqNome[i], 20)
         escreva(eqPontuacao[i]:5, eqVitorias[i]:5, eqEmpates[i]:5, eqDerrotas[i]:5)
         escreva(eqPontosMarc[i]:5, eqPontosSofr[i]:5, eqSaldo[i]:5)
         escreval("")
      fimpara
      escreval("P=Pontos V=Vitorias E=Empates D=Derrotas PM=Pontos Marcados PS=Pontos Sofridos SG=Saldo")
   fimse
fimprocedimento

procedimento exibirEstatisticas
var
   i, somaVitorias, somaEmpates, somaMarcados: inteiro
   idxMaxVit, idxMaxPts, idxMaxSaldo, idxMaxMarc: inteiro
   mediaPartida: real
inicio
   escreval("============ ESTATISTICAS DO CAMPEONATO ============")
   escreval("Equipes cadastradas.......: ", qtdEquipes)
   se qtdEquipes = 0 entao
      escreval("Sem dados para calcular as demais estatisticas.")
   senao
      somaVitorias <- 0
      somaEmpates <- 0
      somaMarcados <- 0
      idxMaxVit <- 1
      idxMaxPts <- 1
      idxMaxSaldo <- 1
      idxMaxMarc <- 1
      para i de 1 ate qtdEquipes faca
         somaVitorias <- somaVitorias + eqVitorias[i]
         somaEmpates <- somaEmpates + eqEmpates[i]
         somaMarcados <- somaMarcados + eqPontosMarc[i]
         se eqVitorias[i] > eqVitorias[idxMaxVit] entao
            idxMaxVit <- i
         fimse
         se eqPontuacao[i] > eqPontuacao[idxMaxPts] entao
            idxMaxPts <- i
         fimse
         se eqSaldo[i] > eqSaldo[idxMaxSaldo] entao
            idxMaxSaldo <- i
         fimse
         se eqPontosMarc[i] > eqPontosMarc[idxMaxMarc] entao
            idxMaxMarc <- i
         fimse
      fimpara
      escreval("Partidas realizadas.......: ", totalPartidas)
      // cada partida decidida gera 1 vitoria; cada empate e contado nas 2 equipes
      escreval("Partidas com vitoria......: ", somaVitorias)
      escreval("Partidas empatadas........: ", somaEmpates div 2)
      se totalPartidas > 0 entao
         // soma dos pontos das duas equipes dividida pelo numero de partidas
         mediaPartida <- somaMarcados / totalPartidas
         escreval("Media de pontos marcados por partida (soma das duas equipes): ", mediaPartida:6:2)
         escreval("Media de pontos marcados por equipe por partida: ", mediaPartida / 2:6:2)
      senao
         escreval("Media de pontos por partida: sem partidas realizadas.")
      fimse
      escreval("Mais vitorias.............: ", eqNome[idxMaxVit], " (", eqVitorias[idxMaxVit], ")")
      escreval("Maior pontuacao...........: ", eqNome[idxMaxPts], " (", eqPontuacao[idxMaxPts], ")")
      escreval("Maior saldo...............: ", eqNome[idxMaxSaldo], " (", eqSaldo[idxMaxSaldo], ")")
      escreval("Mais pontos marcados......: ", eqNome[idxMaxMarc], " (", eqPontosMarc[idxMaxMarc], ")")
   fimse
fimprocedimento

// Mostra a matriz de confrontos (numero de partidas) e detalha uma equipe
procedimento consultarConfrontos
var
   i, j, codigo, posicao: inteiro
inicio
   se qtdEquipes < 2 entao
      escreval("E necessario ter ao menos 2 equipes cadastradas.")
   senao
      escreval("MATRIZ DE CONFRONTOS (numero de partidas entre as equipes)")
      escreva("Cod  ")
      para j de 1 ate qtdEquipes faca
         escreva(eqCodigo[j]:5)
      fimpara
      escreval("")
      para i de 1 ate qtdEquipes faca
         escreva(eqCodigo[i]:3, "  ")
         para j de 1 ate qtdEquipes faca
            se i = j entao
               escreva("    -")
            senao
               escreva(matJogos[i,j]:5)
            fimse
         fimpara
         escreval("")
      fimpara
      escreval("")
      escreva("Codigo da equipe para detalhar (0 = voltar): ")
      leia(codigo)
      se codigo <> 0 entao
         posicao <- localizarEquipe(codigo)
         se posicao = 0 entao
            escreval("Equipe nao localizada.")
         senao
            escreval("Confrontos de ", eqNome[posicao], ":")
            para j de 1 ate qtdEquipes faca
               se j <> posicao entao
                  se matJogos[posicao,j] > 0 entao
                     escreval("  vs ", eqNome[j], ": ", matJogos[posicao,j], " jogo(s) | marcou ", matPontosPro[posicao,j], " | sofreu ", matPontosPro[j,posicao])
                  senao
                     escreval("  vs ", eqNome[j], ": ainda nao se enfrentaram")
                  fimse
               fimse
            fimpara
         fimse
      fimse
   fimse
fimprocedimento

procedimento exibirMenu
inicio
   escreval("")
   escreval("========= ARENA CODE CHAMPIONSHIP =========")
   escreval("1. Cadastrar equipe")
   escreval("2. Listar equipes")
   escreval("3. Registrar resultado de partida")
   escreval("4. Consultar equipe")
   escreval("5. Exibir classificacao geral")
   escreval("6. Exibir estatisticas do campeonato")
   escreval("7. Consultar confrontos")
   escreval("8. Executar recurso recursivo")
   escreval("9. Encerrar sistema")
   escreval("============================================")
fimprocedimento

// ============================================================================
// ALGORITMO PRINCIPAL: apenas inicializa e controla o menu
// ============================================================================
inicio
   inicializarSistema
   repita
      exibirMenu
      escreva("Escolha uma opcao: ")
      leia(opcao)
      escreval("")
      escolha opcao
         caso 1
            cadastrarEquipe
         caso 2
            listarEquipes
         caso 3
            registrarPartida
         caso 4
            consultarEquipe
         caso 5
            exibirClassificacao
         caso 6
            exibirEstatisticas
         caso 7
            consultarConfrontos
         caso 8
            escreval("Iniciando campeonato em...")
            contagemRegressiva(5)
         caso 9
            escreval("Sistema encerrado. Ate logo!")
         outrocaso
            escreval("Opcao invalida! Escolha um numero de 1 a 9.")
      fimescolha
   ate opcao = 9
fimalgoritmo

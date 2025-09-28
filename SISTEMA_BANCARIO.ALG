Algoritmo "Sistema_Bancario"
// Disciplina   : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Elaborar um programa que simule um sistema bancário
// Autor(a)    : Larissa
// Data atual  : 28/09/2025

Var
   // Seção de Declarações das variáveis
   saldo, deposito, saque, pix, transferencia: real
   opcao: inteiro
   chave_pix: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("BANCO LALAND")
   Escreval("")

   saldo <- 0
   opcao <- 0

   Escreval("Digite o saldo inicial da conta : ")
   leia(saldo)

   enquanto opcao <> 7 faca
      Escreval("")
      Escreval("Escolha uma opção : ")
      Escreval("")
      Escreval("1 - Consultar saldo")
      Escreval("2 - Depositar")
      Escreval("3 - Sacar")
      Escreval("4 - Transferir")
      Escreval("5 - Extrato (simples)")
      Escreval("6 - PIX")
      Escreval("7 - Sair")
      leia(opcao)

      escolha opcao

      caso 1
         escreval("Saldo atual: R$ ", saldo)

      caso 2
         Escreval("Digite o valor a depositar : ")
         leia(deposito)
         se deposito > 0 entao
            saldo <- saldo + deposito
            Escreval("Depósito realizado com sucesso!")
            Escreval("Saldo atual: R$ ", saldo)
         senao
            Escreval("Valor inválido!")
         fimse

      caso 3
         Escreval("Digite o valor a sacar: R$ ")
         leia(saque)
         se saque > 0 entao
            se saque <= saldo entao
               saldo <- saldo - saque
               Escreval("Saque realizado com sucesso!")
               Escreval("Saldo atual: R$ ", saldo)
            senao
               Escreval("Saldo insuficiente!")
            fimse
         senao
            escreval("Valor inválido!")
         fimse

      caso 4
         Escreval("Digite o valor a transferir : ")
         leia(transferencia)
         se transferencia > 0 entao
            se transferencia <= saldo entao
               saldo <- saldo - transferencia
               Escreval("Transferência realizada com sucesso!")
               Escreval("Saldo atual: R$ ", saldo)
            senao
               Escreval("Saldo insuficiente!")
            fimse
         senao
            Escreval("Valor inválido!")
         fimse

      caso 5
         Escreval("Extrato")
         Escreval("Saldo atual: R$ ", saldo)

      caso 6
         Escreval("Digite a chave PIX do destinatário : ")
         leia(chave_pix)
         Escreval("Digite o valor a enviar via PIX : ")
         leia(pix)
         se pix > 0 entao
            se pix <= saldo entao
               saldo <- saldo - pix
               Escreval("PIX enviado com sucesso para a chave ", chave_pix, "!")
               Escreval("Saldo atual: R$ ", saldo)
            senao
               Escreval("Saldo insuficiente!")
            fimse
         senao
            Escreval("Valor inválido!")
         fimse

      caso 7
         Escreval("Saindo da conta... Obrigada por usar nosso banco!")

      outrocaso
         Escreval("Opção inválida! Tente novamente.")
      fimescolha
   fimenquanto

Fimalgoritmo
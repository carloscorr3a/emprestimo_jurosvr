algoritmo "Cálculo de Empréstimo com Juros Variáveis"
var

   vempres, parcela, vparcela, empresjurosfx, empresjurosvr: real

inicio

      escreval("Qual será o valor do empréstimo: ")
      leia(vempres)
      
      empresjurosfx <- vempres + (vempres * 20 / 100)



        escreval("Em quantas parcelas? ")
        leia(parcela)
        
        se (parcela <= 5) entao
           empresjurosvr <- empresjurosfx
        senao
          se (parcela >= 6) ou (parcela <= 10) entao
             empresjurosvr <- (empresjurosfx * 5 / 100) + empresjurosfx
          senao
            se (parcela >= 10) ou (parcela <= 12) entao
               empresjurosvr  <- (vparcela * 10 / 100) + empresjurosfx
            senao
               escreval("Número de parcelas inválido")
            fimse
          fimse
        fimse
        
        vparcela <- (empresjurosvr / parcela)
        escreval("Valor do empréstimo com juros fixo: ", empresjurosfx)
        escreval("Valor do empréstimo com juros variável: ", empresjurosvr)
        escreval("Valor da parcela: ", vparcela)
        
fimalgoritmo
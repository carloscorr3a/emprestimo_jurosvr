algoritmo "Cálculo de Empréstimo com Juros Variáveis"
var

   vempres, parcela, vparcela, empresjurosfx, empresjurosvr: real

inicio

      escreval("Qual será o valor do empréstimo: ")
      leia(vempres)
      
      empresjurosfx <- vempres + (vempres * 20 / 100)



        escreval("Em quantas parcelas? [1-12]")
        leia(parcela)
        
        se (parcela <= 4) entao
           empresjurosvr <- empresjurosfx
        senao
          se (parcela >= 5) e (parcela <= 9) entao
             empresjurosvr <- (empresjurosfx * 5 / 100) + empresjurosfx
          senao
            se (parcela >= 10) e (parcela <= 12) entao
               empresjurosvr  <- (empresjurosfx * 10 / 100) + empresjurosfx
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
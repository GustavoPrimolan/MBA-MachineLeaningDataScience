library(bnlearn)
library(bnviewer)



teste <- read.csv("food-sp.csv", header=TRUE)
dados.vendas <- read.csv("food-sp.csv", header=TRUE)
dados.vendas = as.data.frame(dados.vendas)

dados.vendas[is.na(dados.vendas)] <- 0
dados.vendas$PROJETO.CAFE[dados.vendas$PROJETO.CAFE == 0] <- mean(dados.vendas$PROJETO.CAFE)
dados.vendas$BRINDE[dados.vendas$BRINDE == 0] <- mean(dados.vendas$BRINDE)

dados.vendas = dados.vendas[, c(
                                'GELADO.E.MILK.SHAKE',
                                'SANDUICHE',
                                'BEBIDA',
                                'ACOMPANHAMENTO',
                                'ADICIONAL',
                                'PROJETO.CAFE',
                                'BRINDE',
                                'PRATO',
                                'VENDA'
                               )]



#ANALISAR DISTRIBUI��O DE PROBABILIDADE DE TODAS AS VARIÁVEIS


#CRIAR UMA REDE BAYESIANA - FUNÇÃO VIEWER


#ANALISAR NÓS MAIS IMPORTANTES - FUNÇÃO VIEWER



bayesianNetwork.boot.strength = boot.strength(dados.vendas, R = 10 ,
                                              algorithm = "hc" ,
                                              nrow ( data ),
                                              cpdag = TRUE ,
                                              debug = FALSE )

bayesianNetwork.boot.strength[( bayesianNetwork.boot.strength$strength > 0.95 ) &
                                ( bayesianNetwork.boot.strength$direction <= 1 ), ]

avg.bayesianNetwork = averaged.network ( bayesianNetwork.boot.strength )

viewer(avg.bayesianNetwork,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "80vh",
       bayesianNetwork.layout = "layout_in_circle",
       bayesianNetwork.title = "Discrete Bayesian Network - Alarm",
       bayesianNetwork.subtitle = "Monitoring of emergency care patients",
       bayesianNetwork.footer = "Fig. 1 - Layout in circle",
       node.colors = list(background = "red", border = "black",
                          highlight = list(background = "black",
                                           border = "red"))
)

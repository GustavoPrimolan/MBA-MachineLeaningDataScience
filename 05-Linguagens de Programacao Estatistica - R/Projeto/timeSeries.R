library(forecast)
library(ggplot2)

#Leitura do Arquivo vendas.txt
dfFood = read.table('serieVendas.csv', 
                    header=TRUE, 
                    sep=";")

dfFood$venda <- as.numeric(dfFood$venda)

#Serie Temporal
#TS = Time Series
#VAI LEVAR EM CONSIDERAÇÃO A VARIÁVEL VENDA
#VAI INICIAR EM 01 DE 2010
#VAI ATÉ 12 DE 2016
#E PEGAR OS 12 MESES COMO FREQUENCIA
serieTemporal <- ts(dfFood$venda, 
                    start=c(2010, 1), 
                    end=c(2016, 12), 
                    frequency=12)

#Teste de Hipótese
#Teste Estacionariedade
#p-value < 0.05 = serie nao estacionaria
Box.test(serieTemporal, 
         type="Ljung-Box")
#PEGUEI O p-value DO CONSOLE E FIZ A CONDIÇÃO PARA VISUALIZAR SE É MENOR
#POIS O R RETORNA O NÚMERO EM FORMATO CIENTÍFICO
9.269e-09 < 0.05

#Auto Plot - Serie Temporal
autoplot(serieTemporal, main = "Series Temporais - Vendas de Produtos", xlab="Tempo", ylab="Vendas")

#NÃO É NECESSÁRIO COLOCAR OS PARÂMETROS DO ARIMA NA MÃO
#PQ É O AUTO ARIMA
#Ajuste - Modelo ARIMA
fitArima <- auto.arima(serieTemporal)

#EXPONENTIAL TIME SERIES
#Ajuste - Modelo Exponencial
fitExponencial <- ets(serieTemporal)

#Ajuste - Modelo TBATS
fitTBats <- tbats(serieTemporal)

#Ajuste - Modelo BATS
fitBats <- bats(serieTemporal)

#Ajuste - Modelo Neural Network
lambda = BoxCox.lambda(serieTemporal)
fitNeural <- nnetar(serieTemporal,repeats=1000,lambda=lambda)


#Precisao dos Modelos
exponencial.acc <-accuracy(fitExponencial)
arima.acc <-accuracy(fitArima)
tbats.acc <-accuracy(fitTBats)
neural.acc <- accuracy(fitNeural)
bats.acc <- accuracy(fitBats)

#Erro Percentual Absoluto Medio (MAPE)
dataSetMAPE <- c(Neural=neural.acc[,'MAPE'], 
                 ARIMA=arima.acc[,'MAPE'], 
                 TBATS=tbats.acc[,'MAPE'],
                 BATS=bats.acc[,'MAPE'],
                 Exponencial=exponencial.acc[,'MAPE'])
dataSetMAPE

#Erro percentual Absoluto Medio
barplot(dataSetMAPE,
        main = "Erro Percentual Absoluto Medio (MAPE)",
        col="light blue",
        ylab="MAPE")


# Previsao do 1 Semestre de 2017
forecast(fitArima, 6)
forecast(fitNeural, 6)
forecast(fitTBats, 6)
forecast(fitExponencial, 6)

#Plot
autoplot(forecast(fitTBats, 6), main = "Previsao de Vendas de Produtos", xlab="Tempo", ylab="Vendas")
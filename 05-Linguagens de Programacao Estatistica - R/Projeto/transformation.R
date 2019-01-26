dataSet = c(1,2,3,10,13,50,20,100,1000,142, 300)

# Analise de Distribuicao - Densidade
d <- density(dataSet)
plot(d, 
     main="Analise de Distribuicao - Densidade",
     xlab = "Valores",
     ylab = "Densidade")
polygon(d, col="light blue", border="blue")


#TRANSFORMAÇÃO DE UMA SÉRIE TEMPORAL NAO ESTACIONARIA PARA UMA ESTACIONARIA
#Transformacao Logaritmica
dataSet = log(dataSet)

# Analise de Distribuicao - Densidade - Log
d <- density(dataSet)
plot(d, 
     main="Analise de Distribuicao - Densidade - Log",
     xlab = "Valores",
     ylab = "Densidade")
polygon(d, col="light blue", border="blue")
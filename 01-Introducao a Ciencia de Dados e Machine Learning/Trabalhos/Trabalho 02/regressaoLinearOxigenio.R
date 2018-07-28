#Leitura do Arquivo vendas.txt
oxigenioTxt = read.table('oxigenio.txt', header=T)
attach(oxigenioTxt)

#Diagrama de Dispersao
plot(tempo, oxigenio, col=c('red', 'blue', 'green'))

#Coeficiente de Correlacao
cor(tempo,oxigenio)

#Teste de Hipoteses para o Coeficiente de Correlacao
cor.test(tempo,oxigenio)

#Ajuste do Modelo de Regressao Linear
ajuste.modeloLinear = lm(oxigenio ~ tempo)
ajuste.modeloLinear

#Teste de Significancia do Modelo
summary(ajuste.modeloLinear)

#Teste de Normalidade
shapiro.test(residuals(ajuste.modeloLinear))

# Previsao de Quantidade de Oxigenio gasto com tempo de 15
predict(ajuste.modeloLinear, newdata=data.frame(tempo=15))

#Reta ajustada no Diagrama de Dispersao
plot(tempo, oxigenio, col=c('red', 'blue', 'green'))
abline(ajuste.modeloLinear)

#Coeficiente de Determinacao
summary(ajuste.modeloLinear)$r.squared


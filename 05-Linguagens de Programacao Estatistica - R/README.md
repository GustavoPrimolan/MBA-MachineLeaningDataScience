<h1>Transforma��o de Dados</h1>

* S�rie Temporal - Log(n), Box-Cox

* Kurtose - Momentos Estat�sticos - An�lise mais detalhada de distribui��o de probabilidade

<h2>S�ries Temporais</h2>

* Univariado
* Multivariado

* Propriedades
	* Estacion�ria / N�o Estacion�ria
	* Tend�ncia = Crescente / Descrente
	* Sazonalidade - Ele � certo
	* Ciclo - Ele � incerto, quase igual uma sazonalidade

* Gen�rica 
	* Modelo Aditivo = Z(t) = T(t) + S(t) + C(t) + e ->Erro Residual
	* Modelo Multiplicativo = Z(t) = T(t) * S(t) * C(t) * e ->Erro Residual

* Z = S�rie Temporal
* T = Tend�ncia
* S = Sazonalidade
* C = Ciclo
* E = Res�duo / Erro Aleat�rio

<h2>Modelos de S�rie Temporal</h2>

* Modelos na Familia ARMA -> Auto Regressivos
	* Arima
	* Arma
	* Salima (Deriva��es do Arima)
	* Sarimax

* Fam�lia Expon�ncial
	* Simple Exponential
	* Double Exponential
	* Holt Wintev

* Mistos -> Funde um monte de tipo de modelos juntos
	* Tbats -> Valor trigonom�trico
	* Bats
	* Prophet -> Utiliza ajustes Bayesianos e modelos aditivos generalizado. -> Facebook - 2017

	
* Rede Neural
	* Recorrente - Muito �til para qualquer coisa que tem uma caracter�stica temporal

* Cadeia de Markov -> Discreta

<h2>Ensemble</h2>

* M�nimo erro para adotar o modelo ideal
* Verifica todos os modelos para verificar qual o melhor modelo para se utilizar naquele problema
* Random Forest -> Emsemble
* XGBoost

<h3>Revis�o Rede Neural</h3>
* M.L.P => Multi Layer Perceptron
* Estrutura �tima de camadas de redes neurais -> Algoritmo Evolucion�rio -> Gen�tico



<h1>Orienta��o a Objetos</h1>
* Design Patterns
	* Alta coes�o -> Arquitetural M.V.C (Movel, View, Controller) -> Camada View - Apenas interface. Camada Model - Entidades mapeadas de objetos (get, set). Controller -> Regras de Neg�cio / Processamento.
	* Baixo acoplamento -> Classes o mais independetes poss�vel. Reduzir n�vel de depend�ncias.


<h1>An�lise de Distribui��o</h1>

AKAIKE - Serve como medida para que consigamos avaliar qual � a melhor distribui��o ajustada no conjunto de dados.


<h1>Redes Bayesianas</h1>
Entropia de Shanon -> Utilizada para analisar incerteza.

* Negativa de uma somatoria de log de uma probabilidade.
* - Somatoria(lg(pi))

* P(H->Posteriori |  Priori<-E1, E2, E3, E4)

* Pesquisar: Abordagens Bayesianas -> Quantum Bayesian Network -> Utilizar fisica quantica para redes bayesianas -> Utiliza uma informa��o que chama amplitude de probabilidade.

<h2>Como construir uma rede bayesiana</h2>

* Defina um conjunto de var�aveis X que descrevam o dom�nio.
* Defina a estrutura da RB
	* Para cada vari�vel xi e X crie um n� na Rede.
	* Determine os n�s Pais(Xi) dentre os n�s que j� estejam na rede e que tenham influ�ncia direta em Xi

* Defina os pesos da RB
	* Para os n�s que n�o possuem pais defina as probabilidades priori
	* Para os n�s que possuem pais defina as probabilidades condicionais

Obs: A estrutura e os pesos da RB podem ser aprendizados a partir de uma base de dados.

* TAN Bayesian Network -> Uma Rede Bayesiano para classificar. (Diferente do classificador Naive Bayes, que � classico para classifica��o)

* LIBS em R para Redes Bayesianas -> BnLearn / BnViewer -> RStan -> BayesAB para Java.
* Libs para Python -> SciPy ->> BayesPy -> PyMC ->  Pgmpy - Apenas para redes discretas, n�o � poss�vel assumir redes cont�nuas

* Ex: Dataset -> Aplicar ou n�o a transofrma��o -> Aprendizado de estrutura -H.C Hill Climb - G. S - Glow Shrink - Min-Max H.C - Tabu Search. - Meta Aprendizado - Boosting -> FIT (Pesos)
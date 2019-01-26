<h1>Transformação de Dados</h1>

* Série Temporal - Log(n), Box-Cox

* Kurtose - Momentos Estatísticos - Análise mais detalhada de distribuição de probabilidade

<h2>Séries Temporais</h2>

* Univariado
* Multivariado

* Propriedades
	* Estacionária / Não Estacionária
	* Tendência = Crescente / Descrente
	* Sazonalidade - Ele é certo
	* Ciclo - Ele é incerto, quase igual uma sazonalidade

* Genérica 
	* Modelo Aditivo = Z(t) = T(t) + S(t) + C(t) + e ->Erro Residual
	* Modelo Multiplicativo = Z(t) = T(t) * S(t) * C(t) * e ->Erro Residual

* Z = Série Temporal
* T = Tendência
* S = Sazonalidade
* C = Ciclo
* E = Resíduo / Erro Aleatório

<h2>Modelos de Série Temporal</h2>

* Modelos na Familia ARMA -> Auto Regressivos
	* Arima
	* Arma
	* Salima (Derivações do Arima)
	* Sarimax

* Família Exponêncial
	* Simple Exponential
	* Double Exponential
	* Holt Wintev

* Mistos -> Funde um monte de tipo de modelos juntos
	* Tbats -> Valor trigonométrico
	* Bats
	* Prophet -> Utiliza ajustes Bayesianos e modelos aditivos generalizado. -> Facebook - 2017

	
* Rede Neural
	* Recorrente - Muito útil para qualquer coisa que tem uma característica temporal

* Cadeia de Markov -> Discreta

<h2>Ensemble</h2>

* Mínimo erro para adotar o modelo ideal
* Verifica todos os modelos para verificar qual o melhor modelo para se utilizar naquele problema
* Random Forest -> Emsemble
* XGBoost

<h3>Revisão Rede Neural</h3>
* M.L.P => Multi Layer Perceptron
* Estrutura ótima de camadas de redes neurais -> Algoritmo Evolucionário -> Genético



<h1>Orientação a Objetos</h1>
* Design Patterns
	* Alta coesão -> Arquitetural M.V.C (Movel, View, Controller) -> Camada View - Apenas interface. Camada Model - Entidades mapeadas de objetos (get, set). Controller -> Regras de Negócio / Processamento.
	* Baixo acoplamento -> Classes o mais independetes possível. Reduzir nível de dependências.


<h1>Análise de Distribuição</h1>

AKAIKE - Serve como medida para que consigamos avaliar qual é a melhor distribuição ajustada no conjunto de dados.


<h1>Redes Bayesianas</h1>
Entropia de Shanon -> Utilizada para analisar incerteza.

* Negativa de uma somatoria de log de uma probabilidade.
* - Somatoria(lg(pi))

* P(H->Posteriori |  Priori<-E1, E2, E3, E4)

* Pesquisar: Abordagens Bayesianas -> Quantum Bayesian Network -> Utilizar fisica quantica para redes bayesianas -> Utiliza uma informação que chama amplitude de probabilidade.

<h2>Como construir uma rede bayesiana</h2>

* Defina um conjunto de varíaveis X que descrevam o domínio.
* Defina a estrutura da RB
	* Para cada variável xi e X crie um nó na Rede.
	* Determine os nós Pais(Xi) dentre os nós que já estejam na rede e que tenham influência direta em Xi

* Defina os pesos da RB
	* Para os nós que não possuem pais defina as probabilidades priori
	* Para os nós que possuem pais defina as probabilidades condicionais

Obs: A estrutura e os pesos da RB podem ser aprendizados a partir de uma base de dados.

* TAN Bayesian Network -> Uma Rede Bayesiano para classificar. (Diferente do classificador Naive Bayes, que é classico para classificação)

* LIBS em R para Redes Bayesianas -> BnLearn / BnViewer -> RStan -> BayesAB para Java.
* Libs para Python -> SciPy ->> BayesPy -> PyMC ->  Pgmpy - Apenas para redes discretas, não é possível assumir redes contínuas

* Ex: Dataset -> Aplicar ou não a transofrmação -> Aprendizado de estrutura -H.C Hill Climb - G. S - Glow Shrink - Min-Max H.C - Tabu Search. - Meta Aprendizado - Boosting -> FIT (Pesos)
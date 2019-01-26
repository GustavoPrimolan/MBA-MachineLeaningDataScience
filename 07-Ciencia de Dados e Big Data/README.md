* Curiosidades
	* Funções de ativação - Wikipedia

<h2>Word2Vec</h2>

* Word2Vec  --> Lib Python > Gensin

* Doc2Vec   --> Lib Python > Gensin
	* Trabalha em Cluster

* Representam uma palavra como um vetor - por conta disso o nome Vec.

* Como faz isso?
	* Rede Neural que ajuda a encontrar esses valores.
	* Geralmente utilizando uma Rede Neural Linear
	* CBOW - Continuos Bag of Word
		* Nessa abordagem ele pega a rede neural e considera como critério
		* Ex: 5 mil textos variados. Pega um conjunto de janelas. Exemplo da frase: "Olá pessoal, tudo bem? Sim, estamos bem...."
		* Ex: Analisar uma Janela 2 ou janela 3 - Palavra de referência: "tudo" -> 1 ref.
		* Ele vai pegar o "bem" como a 1 palavra, e "?" como a segunda palavra.
		* E vai pegar tbm as palavras de trás, como a janela posterior e a janela anterior.
		* Existe um alvo e as entradas (Janelas anteriores e posteriors)
		* Rede Neural encontre uma relação (contexto) com as janelas de trás e as da frente e se existe alguma relação com a palavra "tudo".
		* Com base nisso ele gera o espaço vetorial (gráfico com vetores de palavras).
	* Skip-Gram
		


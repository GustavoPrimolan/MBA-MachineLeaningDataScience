* Curiosidades
	* Fun��es de ativa��o - Wikipedia

<h2>Word2Vec</h2>

* Word2Vec  --> Lib Python > Gensin

* Doc2Vec   --> Lib Python > Gensin
	* Trabalha em Cluster

* Representam uma palavra como um vetor - por conta disso o nome Vec.

* Como faz isso?
	* Rede Neural que ajuda a encontrar esses valores.
	* Geralmente utilizando uma Rede Neural Linear
	* CBOW - Continuos Bag of Word
		* Nessa abordagem ele pega a rede neural e considera como crit�rio
		* Ex: 5 mil textos variados. Pega um conjunto de janelas. Exemplo da frase: "Ol� pessoal, tudo bem? Sim, estamos bem...."
		* Ex: Analisar uma Janela 2 ou janela 3 - Palavra de refer�ncia: "tudo" -> 1 ref.
		* Ele vai pegar o "bem" como a 1 palavra, e "?" como a segunda palavra.
		* E vai pegar tbm as palavras de tr�s, como a janela posterior e a janela anterior.
		* Existe um alvo e as entradas (Janelas anteriores e posteriors)
		* Rede Neural encontre uma rela��o (contexto) com as janelas de tr�s e as da frente e se existe alguma rela��o com a palavra "tudo".
		* Com base nisso ele gera o espa�o vetorial (gr�fico com vetores de palavras).
	* Skip-Gram
		


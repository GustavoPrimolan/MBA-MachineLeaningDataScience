Teste de Hip�tese
1 - Teste de Normalidade
1.1 - � normal
1.2 - N�o � normal

Cada um ir� dizer uma coisa.

Shapiro Wilk

shapiro.test
- Se o p-value for maior que 0.05 voc� pode assumir que os dados seguem uma distribui��o normal, se menor igual, n�o segue.
- p > 0.05 - Normal (Distribui��o)
- p <= 0.05 - N�o normal

var.test(x1, x2)
p-value > 0.05 - Vari�ncia igual
p-value <= 0.05 - Vari�ncia diferente

Teste de Normalidade:
	- Shapiro.test

- Se � normal
	Teste
	Vari�ncia	
		- Se igual
			- t.test()			
				- var igual

		- Se diferente
			- t.test()
				- var diferente					
	
- Se n�o � normal
	- Usa o teste de wilcox
	- wilcox.test(x1, x2)
		- N�o-Param�trico
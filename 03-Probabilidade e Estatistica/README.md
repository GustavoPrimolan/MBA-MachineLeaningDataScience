Teste de Hipótese
1 - Teste de Normalidade
1.1 - É normal
1.2 - Não é normal

Cada um irá dizer uma coisa.

Shapiro Wilk

shapiro.test
- Se o p-value for maior que 0.05 você pode assumir que os dados seguem uma distribuição normal, se menor igual, não segue.
- p > 0.05 - Normal (Distribuição)
- p <= 0.05 - Não normal

var.test(x1, x2)
p-value > 0.05 - Variância igual
p-value <= 0.05 - Variância diferente

Teste de Normalidade:
	- Shapiro.test

- Se é normal
	Teste
	Variância	
		- Se igual
			- t.test()			
				- var igual

		- Se diferente
			- t.test()
				- var diferente					
	
- Se não é normal
	- Usa o teste de wilcox
	- wilcox.test(x1, x2)
		- Não-Paramétrico
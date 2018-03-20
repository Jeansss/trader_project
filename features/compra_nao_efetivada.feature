#language: pt
#utf-8
@compra_nao_efetivada
Funcionalidade: Compra nao efetivada
	Eu como usuario do site tradersclub
	Quero realizar uma compra nao efetivada
	Para validar o sistema de compra

	
	Cenario: Compra nao efetivada por cartao invalido
		Dado que eu tenha acesso ao site tradersclub
		Quando realizar uma compra com cartao invalido
		Entao valido que o sistema rejeitara a compra

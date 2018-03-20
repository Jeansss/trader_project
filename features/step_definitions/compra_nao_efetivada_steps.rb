Dado("que eu tenha acesso ao site tradersclub") do
 	@logar = Logar.new
    @validar = Validar.new
    @logar.load
    @logar.logar 'fillipe100','Fe363620'
end

Quando("realizar uma compra com cartao invalido") do
  @compra = Compra.new
  @compra.compra_nao_efetivada 'Fillipe Goncalves', '0000000000000000', '012020', '123', 'Juliana Barbosa'
end

Entao("valido que o sistema rejeitara a compra") do
  @validar_msg_compra = Validar_msg_compra.new
  @validar_msg_compra.validar_msg_compra_nao_efetivada
  variavel = expect(@validar_msg_compra.validar_msg_compra_nao_efetivada).to eq("Não foi possível processar o seu pagamento, verifique se os dados estão corretos.")
  puts @validar_msg_compra.validar_msg_compra_nao_efetivada
  puts variavel
end
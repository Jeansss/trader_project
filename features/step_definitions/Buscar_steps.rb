Dado("que esteja logado no site tradersclub") do
  @logar = Logar.new
  @validar = Validar.new
  @logar.load
  @logar.logar 'fillipe100','Fe363620'
end

Quando("realizar um busca em um dos menus") do
  @buscar = BuscaPage.new
  @buscar.buscar("cursos")
end

Entao("é retornado todos os resultados da pesquisa") do
  continuar =  expect(@buscar.validar_msg).to eq("cursos")
  puts @buscar.validar_msg
  puts continuar
end

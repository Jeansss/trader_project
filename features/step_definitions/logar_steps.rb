Dado("que tenha acesso ao site") do
    @logar = Logar.new
    @validar = Validar.new
    @logar.load
  end
  
  Quando("eu informar o login e senha") do
    @logar.logar 'fillipe100','Fe363620'
  end
  
  Então("eu tenha acesso ao trading news") do
    @validar.validar_login ('//*[@id="channelHeaderDropdown"]')
  end
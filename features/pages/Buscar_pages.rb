class BuscaPage<SitePrism::Page

  element :pesquisar, :xpath, '//*[@id="channel-header"]/div/div[3]/div/div[2]/form/div[1]/input'
  element :pesquisado, :xpath, '//*[@id="search-items-container"]/div[1]/div[2]/div[2]/div[2]/div[2]/div/div/span/p/span'


  def buscar dado
    pesquisar.set(dado)
    pesquisar.send_keys :enter

  end

  def validar_msg
    pesquisado.text
  end
end

class Validar < SitePrism::Page

    #element :trading_news, :xpath, '//*[@id="channelHeaderDropdown"]'

    def validar_login(valido)
       # binding.pry
        has_xpath? valido 
    end
end

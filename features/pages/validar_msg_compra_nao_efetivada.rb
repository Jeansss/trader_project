class Validar_msg_compra < SitePrism::Page

    element :msg_error_text, '.helper-error'

    def validar_msg_compra_nao_efetivada()
      msg_error_text.text 
    end
end
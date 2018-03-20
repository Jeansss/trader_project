class Compra < SitePrism::Page

	element :loja_link, :xpath, '//*[@id="sidebar-left"]/div[4]/div[1]/ul/li[4]/a/span'
	element :master_link, :xpath, '//*[@id="cart"]/div[2]/div[1]/div/a/div[1]'
	element :contratar_mensal_link, :xpath, '//*[@id="cart"]/div/div[2]/div[1]/div[1]/a'
	element :nome_field, :xpath, '//*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[1]/div/input'
	element :numcard_filed, :xpath, '//*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[2]/div/input'
	element :dataexp_field, :xpath, '//*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[3]/div/input'
	element :cvv_field, :xpath, '//*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[4]/div/input'
	elements :atendente_list, '.list'
	element :finalizar_button, '#login'

	def compra_nao_efetivada(nome, numcard, dataexp, cvv, atendente)
		loja_link.click
		master_link.click
		contratar_mensal_link.click
		nome_field.set(nome)
		numcard_filed.set(numcard)
		dataexp_field.set(dataexp)
		cvv_field.set(cvv)
		atendente_list.first.select(atendente)
		finalizar_button.click
	end
end



# //*[@id="sidebar-left"]/div[4]/div[1]/ul/li[4]/a/span
# <span class="title-menu">loja</span>

# //*[@id="cart"]/div[2]/div[1]/div/a/div[1]
# <div class="over"></div>

# //*[@id="cart"]/div/div[2]/div[1]/div[1]/a
# <a href="/tradersclub/checkout/33416-3" class="btn btn-primary">Contratar</a>

# //*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[1]/div/input
# <input type="text" class="form-control" maxlength="25" name="CCname">

# //*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[2]/div/input
# <input type="text" class="form-control" name="CCnumber">

# //*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[3]/div/input
# <input type="text" class="form-control" name="CCexpiry">

# //*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[4]/div/input
# <input type="text" class="form-control" name="CCcvc">

# //*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[2]/div[1]/div/div/select
# <select name="" class="list" id=""><option value="">Online</option><option value="bruno">Bruno Cubells</option><option value="juliana">Juliana Barbosa</option></select>

# //*[@id="login"]
# <input type="submit" id="login" value="Finalizar" class="btn btn-primary">

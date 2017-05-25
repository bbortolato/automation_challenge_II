Dado(/^que eu acesse o site do Walmart$/) do
  @walmartPage = WalmartHomePage.new
  @walmartPage.load
end

Entao(/^eu irei efetuar uma busca por "([^"]*)" na busca$/) do |product|
  @walmartPage.search_box.set(product)
  @walmartPage.button_magnifier.click
end

Entao(/^irei validar o retorno obtido$/) do
  expect(@walmartPage).to have_content('TV')
end

Entao(/^irei clicar em uma das TV obtidas na lista$/) do
  @walmartPage.product.click
end

Entao(/^irei validar se abriu o link da TV corretamente$/) do
  expect(@walmartPage).to have_content('PH32E31DSGW')
end

Entao(/^irei adicionar esse item ao carrinho$/) do
  @walmartPage.add_to_cart.click
end

Entao(/^irei acessar o meu carrinho e confirmar se o item consta no carrinho$/) do
  @walmartPage.button_insurances.click
  expect(@walmartPage).to have_content('PH32E31DSGW')
end

Entao(/^irei para as proximas etapas ate efetuar o login$/) do
  @walmartPage.button_finalize_cart.click
  @walmartPage.username.set(USERNAME)
  @walmartPage.password.set(PASSWORD)
  @walmartPage.button_login.click
  expect(@walmartPage).to have_content('Escolha um endereço para entrega')
end
Dado(/^que eu efetue uma consulta no serviço que lista todos os posts disponiveis\.$/) do
  consulta_posts = PostManager.new
  @response = consulta_posts.consulta_lista_posts
end

Entao(/^eu irei validar seu codigo de retorno "([^"]*)"$/) do |response_code|
  expect(@response.code).to eq(response_code.to_i)
end

Entao(/^irei validar todos os campos do retorno$/) do
  expect(@response.parsed_response[0]['userId']).to eq(1)
end

Dado(/^que eu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
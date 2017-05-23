
##### --- Instancia servico de consulta dos posts --- #####

Dado(/^que eu efetue uma consulta no serviço que lista todos os posts disponiveis\.$/) do
  @consulta_posts = PostManager.new
  @response = @consulta_posts.consulta_lista_posts
end

##### --- Validação lista de consulta dos posts --- #####

Entao(/^irei validar todos os campos do retorno$/) do
  post_counter = 0
  user_id = 1
  while post_counter < 100 do
    if (post_counter != 0) && (post_counter % 10 == 0)
      user_id+=1
    end
    expect(@response.parsed_response[post_counter]['userId']).to eq user_id
    expect(@response.parsed_response[post_counter]['id']).to eq post_counter + 1
    expect(@response.parsed_response[post_counter]['title']).to have_content
    expect(@response.parsed_response[post_counter]['body']).to have_content
    post_counter+=1
  end
end



#### --- Validação generica do responde code. --- ####

Entao(/^eu irei validar seu codigo de retorno "([^"]*)"$/) do |response_code|
  expect(@response.code).to eq(response_code.to_i)
end

#### --- Consulta post por id --- ####

Dado(/^que eu efetue uma consulta no serviço de consulta de posts com o (\d+)$/) do |post_id|
  @consulta_posts = PostManager.new
  @post_id = post_id
  @response = @consulta_posts.consulta_posts(@post_id)
end

Entao(/^irei validar os campos retornado nessa busca$/) do
  expect(@response.parsed_response['userId']).to eq 1 unless @response.code.equal?(404)
  expect(@response.parsed_response['id']).to eq @post_id.to_i unless @response.code.equal?(404)
  expect(@response.parsed_response['title']).to have_content unless @response.code.equal?404
  expect(@response.parsed_response['body']).to have_content unless @response.code.equal?404
end
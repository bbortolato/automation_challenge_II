#### --- Validação generica do responde code. --- ####

Entao(/^eu irei validar seu codigo de retorno "([^"]*)"$/) do |response_code|
  expect(@response.code).to eq(response_code.to_i)
end
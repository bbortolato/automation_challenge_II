# language: pt

  Funcionalidade: Criar novo post enviando uma requisição na rota disponivel  de post para criação

    @api
    Cenario: Efetuar a criação de um novo post de comentarios
      Dado que eu efetue a criação de um novo post
      Entao eu irei validar seu codigo de retorno "201"
      E irei validar o id "101" do meu post criado
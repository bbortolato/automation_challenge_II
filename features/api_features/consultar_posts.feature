# language: pt

  Funcionalidade: Testes e validações da consulta de lista e consulta por id da api por rota de posts.

    @api
    Cenario: Efetuar uma consulta no serviço de posts, receber uma lista com todos os posts e validar seu retorno
      Dado que eu efetue uma consulta no serviço que lista todos os posts disponiveis.
      Entao eu irei validar seu codigo de retorno "200"
      E irei validar todos os campos do retorno

    @api
    Esquema do Cenario: Efetuar consulta no servico de posts, consultando um post especificamente.
      Dado que eu efetue uma consulta no serviço de consulta de posts com o <post_id>
      Entao eu irei validar seu codigo de retorno "<response_code>"
      E irei validar os campos retornado nessa busca

      Exemplos:
      | post_id | response_code |
      | 10      | 200           |
      | 999     | 404           |
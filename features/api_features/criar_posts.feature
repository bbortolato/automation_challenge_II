# language: pt



  Funcionalidade: Testes e validações para deletar e alterar posts pré existentes

    Esquema do Cenario: Efetuar consulta no servico de posts, consultando um post efecificamente.
      Dado que eu efetue uma consulta no serviço de consulta de posts com o <post_id>
      Entao eu irei validar seu codigo de retorno "<response_code>"
      E irei validar os campos retornado nessa busca

      Exemplos:
        | post_id | response_code |
        | 10      | 200           |
        | 999     | 404           |
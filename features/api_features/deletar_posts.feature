# language: pt

  Funcionalidade: Testes e validações para deletar e alterar dados na api por rota dos posts
    (obs nessa api modelo não é possivel fazer um teste de fluxo completo, onde cria, altera e apaga o mesmo post)
    Tambem irei pular a opção de consultar um id antes de efetuar o delete, é um cenario
    conhecido e garantido que o delete sempre irá funcionar no escopo de teste dessa api)

    Esquema do Cenario: Efetuar
      Dado que eu efetue um delete na api com o <post_id>
      Entao eu irei validar seu codigo de retorno "<response_code>"

      Exemplos:
        | post_id | response_code |
        | 10      | 200           |
        | 999     | 404           |
# language: pt

  Funcionalidade: Acessar o site do walmart, buscar pelo termo TV, validar os resultados obtidos
                  Selecionar um dos itens da lista e adicionar ao carrinho.


    @front
    Cenario:  Acessar o site do walmart, consultar a tv e adicionar ao carrinho.
      Dado que eu acesse o site do Walmart
      Entao eu irei efetuar uma busca por "TV" na busca
      E irei validar o retorno obtido
      Entao irei clicar em uma das TV obtidas na lista
      E irei validar se abriu o link da TV corretamente
      Entao irei adicionar esse item ao carrinho
      E irei acessar o meu carrinho e confirmar se o item consta no carrinho
      Entao irei para as proximas etapas ate efetuar o login

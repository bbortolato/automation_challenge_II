class PostManager
  include HTTParty

  base_uri ENVIRONMENT['jsonplaceholder']
  format :json
  headers 'Content-type' => 'application/json'


  def consulta_lista_posts
    self.class.get('/posts')
  end

  def consulta_posts(post_id)
    self.class.get("/posts/#{post_id}")
  end

  def criar_post(title, body, user_id)
    self.class.post("/posts", body: body)
  end

  def delet_post()
    self.class.delete("/posts")
  end
end
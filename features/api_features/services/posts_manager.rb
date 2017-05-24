require_relative '../../../../automation_challenge_II/fixtures/data_json_factory/posts_manager_factory'

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

  def criar_post(user_id, post_id, title, post_body)
    json_body = PostManagerFactory.new
    self.class.post("/posts", body: json_body.new_post_factory(user_id,post_id,title,post_body))
  end

  def deletar_post(post_id)
    self.class.delete("/posts/#{post_id}")
  end
end
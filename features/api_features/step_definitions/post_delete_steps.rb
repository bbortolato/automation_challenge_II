Dado(/^que eu efetue um delete na api com o (\d+)$/) do |post_id|
  @consulta_posts = PostManager.new
  @post_id = post_id
  @response = @consulta_posts.deletar_post(post_id)
end
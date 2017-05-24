class PostManagerFactory

  def new_post_factory(user_id=nil,post_id=nil,title=nil,body=nil)
    newpost = YAML.load_file('./fixtures/posts_manager_data/post.yaml')
    newpost['userId'] = user_id unless nil?
    newpost['id'] = post_id unless nil?
    newpost['title'] = title unless nil?
    newpost['body'] = body unless nil?

    return newpost.to_json
  end

end
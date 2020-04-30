class UpdatePostCommand
  def execute(id:, title:, description:)
    post = Post.find(id)
    post.update(title: title, description: description)

    post
  end
end
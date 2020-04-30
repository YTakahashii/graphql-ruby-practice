class DeletePostCommand
  def execute(id:)
    post = Post.find(id)
    post.destroy

    post
  end
end
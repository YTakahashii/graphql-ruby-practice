class CreateCommentCommand
  def execute(post_id:, content:)
    post = Post.find(post_id)
    comment = post.comments.build(content: content)
    comment.save

    comment
  end
end
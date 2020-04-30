class CreatePostCommand
  def execute(title:, description:)
    Post.create(title: title, description: description)
  end
end
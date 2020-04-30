class PostsRepository
  def find_all
    Post.all
  end

  def find_by(id:)
    Post.find(id)
  end
end
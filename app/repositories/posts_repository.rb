class PostsRepository
  def find_all
    Post.all
  end

  def find_by(id:)
    Post.find_by(id: id)
  end
end

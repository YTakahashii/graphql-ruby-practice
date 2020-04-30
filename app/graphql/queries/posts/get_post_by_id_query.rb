class Queries::Posts::GetPostByIdQuery < GraphQL::Schema::Resolver
  description '指定したidのPostを取得'
  argument :id, ID, required: false
  type Types::PostType, null: false

  def resolve(id:)
    posts_repository.find_by(id: id)
  end

  def posts_repository
    @posts_repository ||= PostsRepository.new
  end
end
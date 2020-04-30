class Queries::Posts::GetPostsAllQuery < GraphQL::Schema::Resolver
  description 'すべてのPostを取得'
  type [Types::PostType], null: false

  def resolve
    posts_repository.find_all
  end

  def posts_repository
    @posts_repository ||= PostsRepository.new
  end
end
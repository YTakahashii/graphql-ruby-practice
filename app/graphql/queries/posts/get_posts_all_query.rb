class Queries::Posts::GetPostsAllQuery < GraphQL::Schema::Resolver
  description 'すべてのPostを取得'
  type [Types::PostType], null: false

  def resolve
    Post.all
  end
end
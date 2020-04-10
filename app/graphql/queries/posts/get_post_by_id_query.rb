class Queries::Posts::GetPostByIdQuery < GraphQL::Schema::Resolver
  description '指定したidのPostを取得'
  argument :id, ID, required: false
  type Types::PostType, null: false

  def resolve(id:)
    Post.find(id)
  end

end
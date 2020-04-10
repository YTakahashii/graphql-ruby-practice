class Mutations::Posts::UpdatePostMutation < Mutations::Base::BaseMutation
  # graphql_name 'UpdatePostMutation'
  description 'idで指定したPostを更新'

  type Types::PostType
  null true

  argument :id, ID, required: true
  argument :title, String, required: false
  argument :description, String, required: false

  def resolve(**args)
    post = Post.find(args[:id])
    post.update(title: args[:title], description: args[:description])

    post
  end
end

class Mutations::Posts::DeletePostMutation < Mutations::Base::BaseMutation
  # graphql_name 'DeletePostMutation'
  description 'idで指定したPostを削除'

  type Types::PostType
  null true

  argument :id, ID, required: true

  def resolve(**args)
    post = Post.find(args[:id])
    post.destroy

    post
  end
end

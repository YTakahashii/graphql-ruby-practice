class Mutations::Comments::CreateCommentMutation < Mutations::Base::BaseMutation
  # graphql_name 'CreateCommentMutation'
  description 'Commentを更新'

  type Types::CommentType
  null true

  argument :post_id, ID, required: true
  argument :content, String, required: true

  def resolve(**args)
    command.execute(post_id: args[:post_id], content: args[:content])
  end

  def command
    CreateCommentCommand.new
  end
end

class Mutations::Comments::CreateCommentMutation < Mutations::Base::BaseMutation
  # graphql_name 'CreateCommentMutation'
  description 'Commentを更新'

  type Types::CommentType
  null true

  argument :post_id, ID, required: true
  argument :content, String, required: true

  def resolve(**args)
    post = Post.find(args[:post_id])
    comment = post.comments.build(content: args[:content])
    comment.save

    comment
  end
end


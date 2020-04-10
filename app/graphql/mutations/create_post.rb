module Mutations
  class CreatePost < BaseMutation
    # CreatePostInput, CreatePostPayloadとなる
    graphql_name 'CreatePost'

    # レスポンスのオブジェクト要素を指定
    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    # mutationの引数
    argument :title, String, required: false
    argument :description, String, required: false

    # 実行内容
    def resolve(**args)
      post = Post.create(title: args[:title], description: args[:description])
      {
          post: post,
          result: post.errors.blank?
      }
    end
  end
end

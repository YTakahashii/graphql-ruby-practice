class Mutations::Posts::CreatePostMutation < Mutations::Base::BaseMutation
  # graphql_name 'CreatePostMutation'
  description 'Postを作成'
  # レスポンスのオブジェクト要素を指定
  type Types::PostType
  null false

  # mutationの引数
  argument :title, String, required: false
  argument :description, String, required: false

  # 実行内容
  def resolve(**args)
    command.execute(title: args[:title], description: args[:description])
  end

  def command
    CreatePostCommand.new
  end
end


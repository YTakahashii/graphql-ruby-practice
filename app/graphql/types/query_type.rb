module Types
  class QueryType < Types::BaseObject
    # Queryのエントリーポイント
    # TODO: graphql/queriesからmoduleをincludeする
    field :posts, [Types::PostType], null: false, description: "すべてのPostを取得"
    def posts
      Post.all
    end

    field :post, Types::PostType, null: false, description: "指定したidのPostを取得" do
      argument :id, Int, required: false
    end
    def post(id:)
      Post.find(id)
    end

    # sample
    field :test_field, String, null: false,
      description: "Docの説明欄に出る内容"
    def test_field
      "Hello World!"
    end
  end
  end

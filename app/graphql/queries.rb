class Queries < Types::BaseObject
  # Queryのエントリーポイント
  graphql_name 'Query'

  # graphql/queriesからmoduleをincludeする
  include Posts

  # sample
  field :test_field, String, null: false,
    description: "Docの説明欄に出る内容"
  def test_field
    "Hello World!"
  end
end

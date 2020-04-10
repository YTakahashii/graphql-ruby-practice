class Mutations < Types::BaseObject
  graphql_name 'Mutation'
  include Posts
  include Comments

  # TODO: remove me
  field :test_field, String, null: false,
        description: "An example field added by the generator"

  def test_field
    "Hello World"
  end
end


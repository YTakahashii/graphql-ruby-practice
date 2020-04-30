class Mutations::Posts::UpdatePostMutation < Mutations::Base::BaseMutation
  # graphql_name 'UpdatePostMutation'
  description 'idで指定したPostを更新'

  type Types::PostType
  null true

  argument :id, ID, required: true
  argument :title, String, required: false
  argument :description, String, required: false

  def resolve(**args)
    command.execute(id: args[:id], title: args[:title], description: args[:description])
  end

  def command
    UpdatePostCommand.new
  end
end

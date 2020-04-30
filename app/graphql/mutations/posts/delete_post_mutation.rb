class Mutations::Posts::DeletePostMutation < Mutations::Base::BaseMutation
  # graphql_name 'DeletePostMutation'
  description 'idで指定したPostを削除'

  type Types::PostType
  null true

  argument :id, ID, required: true

  def resolve(**args)
    command.execute(id: args[:id])
  end

  def command
    DeletePostCommand.new
  end
end

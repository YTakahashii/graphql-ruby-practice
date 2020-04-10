module Mutations::Comments
  extend ActiveSupport::Concern

  included do
    field :create_comment, mutation: CreateCommentMutation
  end
end
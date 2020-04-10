module Mutations::Posts
  extend ActiveSupport::Concern

  included do
    field :create_post, mutation: CreatePostMutation
    field :update_post, mutation: UpdatePostMutation
    field :delete_post, mutation: DeletePostMutation
  end
end
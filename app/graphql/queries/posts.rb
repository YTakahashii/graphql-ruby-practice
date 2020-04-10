module Queries::Posts
  extend ActiveSupport::Concern

  included do
    field :posts, resolver: GetPostsAllQuery
    field :post, resolver: GetPostByIdQuery
  end
end
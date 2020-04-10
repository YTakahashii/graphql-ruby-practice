Post.new.tap do |post|
  post.title = 'title'
  post.description = 'description'
  post.comments.build(content: 'comment1')
  post.save!
end
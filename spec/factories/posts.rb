FactoryBot.define do
  factory :post, class: Post do
    sequence(:title) { |n| "投稿#{n}" }
    sequence(:description) { |n| "投稿#{n}の詳細文" }
  end
end
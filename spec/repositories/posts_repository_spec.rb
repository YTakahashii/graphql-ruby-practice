require 'rails_helper'

RSpec.describe PostsRepository, type: :repository do

  before(:each) do
    FactoryBot.create_list(:post, 5)
  end

  describe 'find_all' do
    it 'Postの配列を取得できる' do
      expect(PostsRepository.new.find_all).to match_array(Post.all)
    end
  end

  describe 'find_by' do
    let(:find_target_post) { FactoryBot.create(:post) }
    it '指定したidのpostを取得できる' do
      expect(PostsRepository.new.find_by(id: find_target_post.id)).to eq(find_target_post)
    end

    it '存在しないidを指定した場合 nil を返す' do
      expect(PostsRepository.new.find_by(id: -1)).to be_nil
    end
  end
end

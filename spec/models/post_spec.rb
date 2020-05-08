require 'rails_helper'

RSpec.describe Post do
  describe 'Post' do
    let(:valid_post) { FactoryBot.create(:post) }

    it 'titleが入っていると有効' do
      expect(valid_post).to be_valid
    end
  end
end
require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:comment) {Comment.new}

  it 'has a user' do
    expect(comment).to belong_to(:user)
  end

  it 'has a user' do
    expect(comment).to belong_to(:event)
  end
end

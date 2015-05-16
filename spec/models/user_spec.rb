require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.new(first_name: 'chase', last_name: 'nutile')}

  it 'has user events' do
    expect(user).to have_many :user_events
  end

  it 'has events through user_events' do
    expect(user).to have_many :events
  end

  it 'has comments' do
    expect(user).to have_many :comments
  end

end

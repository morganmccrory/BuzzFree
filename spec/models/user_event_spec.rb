require 'rails_helper'

RSpec.describe UserEvent, type: :model do

  let(:user_event) {UserEvent.new}

  it 'belongs to a user' do
    expect(user_event).to belong_to(:user)
  end

  it 'belongs to an event' do
    expect(user_event).to belong_to(:event)
  end

end

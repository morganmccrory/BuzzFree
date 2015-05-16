require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) {Event.new}

  it 'has comments' do
    expect(event).to have_many(:comments)
  end

  it 'has user_events' do
    expect(event).to have_many(:user_events)
  end

  it 'has users' do
    expect(event).to have_many(:users).through(:user_events)
  end

end

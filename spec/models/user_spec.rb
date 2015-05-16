require 'rails_helper'

RSpec.describe User, type: :model do

  let(:chase) {User.new(first_name: 'chase',
                       last_name: 'nutile',
                       password: '12345',
                       email: 'chase@chase.com')}

  it 'has user events' do
    expect(chase).to have_many :user_events
  end

  it 'has events through user_events' do
    expect(chase).to have_many :events
  end

  it 'has comments' do
    expect(chase).to have_many :comments
  end

  it 'has an email' do
    expect(chase).to validate_presence_of(:email).on(:create)
  end

  it 'has a password' do
    expect(chase).to validate_presence_of(:password).on(:create)
  end

  it 'has a first_name' do
    expect(chase).to validate_presence_of(:first_name).on(:create)
  end

  it 'has an last_name' do
    expect(chase).to validate_presence_of(:last_name).on(:create)
  end

end

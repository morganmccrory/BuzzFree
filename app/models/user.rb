class User < ActiveRecord::Base
  has_many :comments
  has_many :user_events
  has_many :events, through: :user_events

  validates :first_name, :last_name, :password, :email, presence: true
  # validates :email, uniqueness: true
  # validates :email, format: { with: /\w*@\w*.\w*/,
  #                             message: "Must enter valid email"}

end

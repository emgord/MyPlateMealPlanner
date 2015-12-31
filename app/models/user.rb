class User < ActiveRecord::Base
  has_many :meals

  validates :username, presence: true
  validates :username, uniqueness: true

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, confirmation: true
  validates :email_confirmation, presence: true

  validates_confirmation_of :password, :message => "Passwords do not match"
  validates :password, length: { minimum: 6 }
  has_secure_password
end

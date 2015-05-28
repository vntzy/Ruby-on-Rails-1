class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, confirmation: true, format: { with: /.+@.+\..+/}
  has_secure_password
end
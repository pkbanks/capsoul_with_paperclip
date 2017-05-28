class User < ApplicationRecord
  has_many :pictures

  has_secure_password
  validates :first_name, :last_name, :email, presence: true
  # has_attached_file :avatar
  # Validate content type
end

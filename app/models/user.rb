class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
  validates :name, {presence: true, uniqueness: true}
  validates :email,{presence: true, uniqueness: true}
  validates :administrator, presence: true

end

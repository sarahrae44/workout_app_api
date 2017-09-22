class User < ApplicationRecord
  has_secure_password
  has_many :usersaves
  has_many :groups, through: :usersaves
end

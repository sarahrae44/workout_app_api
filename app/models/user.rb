class User < ApplicationRecord
  has_secure_password
  has_many :usersaves
  has_many :groups
  has_many :exercises, through: :groups
  has_many :bodies, through: :groups
  has_many :groups, through: :usersaves

end

class Exercise < ApplicationRecord
  has_many :groups
  has_many :bodies, through: :groups
  has_many :user_exes
  has_many :users, through: :user_exes
end

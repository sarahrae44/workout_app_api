class Exercise < ApplicationRecord
  has_many :groups
  has_many :bodies, through: :groups
end

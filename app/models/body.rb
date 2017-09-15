class Body < ApplicationRecord
  has_many :groups
  has_many :exercises, through: :groups
end

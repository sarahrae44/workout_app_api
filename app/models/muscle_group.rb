class MuscleGroup < ApplicationRecord
  has_many :groups
  # has_many :exercises, through: :groups
  # has_many :bodies, through: :groups
end

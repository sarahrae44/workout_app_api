class MuscleGroup < ApplicationRecord
  has_many :groups
  # has_many :exercises, through: :groups
  # has_many :bodies, through: :groups
  # accepts_nested_attributes_for :groups
end

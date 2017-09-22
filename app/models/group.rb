class Group < ApplicationRecord
  # attr_accessible :body_id, :exercise_id
  belongs_to :body
  belongs_to :exercise
  # validates :body_id, presence: true
  # validates :exercise_id, presence: true
  # accepts_nested_attributes_for :body, :exercise
  has_many :usersaves
  has_many :users, through: :usersaves
end

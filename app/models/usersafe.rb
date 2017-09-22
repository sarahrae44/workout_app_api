class Usersafe < ApplicationRecord
  belongs_to :user
  belongs_to :group
  accepts_nested_attributes_for :group
end

class Recipe < ApplicationRecord
  belong_to :user
  has_many :comments
  has_one :ingredient
end

class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  belongs_to :user
  has_many :comments
  has_one :ingredient

  validates :category_id , numericality: { other_than: 1 } 
end

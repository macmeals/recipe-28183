class Recipe < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments

  validates :category_id , numericality: { other_than: 1 } 


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  

end

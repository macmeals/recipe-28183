class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :comments

  with_options presence: true do
    validates :nickname
    validates :email , uniqueness:{ case_sensitive: true } , format: { with: /\A[a-zA-Z0-9.!#%&'*+\/=?_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\z/ }
    validates :password , length: { minimum: 6 } , format:{ with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze }
  end

end

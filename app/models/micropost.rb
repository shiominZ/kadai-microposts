class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum:255 }
  
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'favorite_id'
  has_many :favorite_users, through: :reverses_of_favorite, source: :user
end

class Micropost < ApplicationRecord
  belongs_to :user
	validates :content, presence: true, length: { maximum: 255 }
	
	# favorite関連 ここから
	has_many :favorites
	has_many :users, through: :favorites, source: :user
	#has_many :users, through: favorites
	# favorite関連 ここまで
end

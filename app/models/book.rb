class Book < ApplicationRecord
 belongs_to :user 
 has_many :relationships, dependent: :destroy
 has_many :likes, dependent: :destroy

validates :title, presence: true
validates :body, presence: true, length: { maximum: 200 }


 def likes_by?(user)
  likes.where(user_id: user.id).exists?
 end
 
end

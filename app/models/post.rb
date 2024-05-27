class Post < ApplicationRecord
  validates :name , presence: true, length: { maximum: 50 }
  validates :title, presence: true

  belongs_to :user
end

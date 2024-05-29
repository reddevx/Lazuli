class Post < ApplicationRecord
  validates :name , presence: true, length: { maximum: 50 }
  validates :title, presence: true
  validates :local, presence: true
  validates :level_danger, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader

  belongs_to :user
end

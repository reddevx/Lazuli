class Notice < ApplicationRecord
  mount_uploader :image, ImageUploader
end

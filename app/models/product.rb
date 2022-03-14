class Product < ApplicationRecord
  belongs_to :category
  enum gender: {men:0, women:1}

  mount_uploader :images, ImagesUploader
  mount_uploaders :preview_image, ImagesUploader
end

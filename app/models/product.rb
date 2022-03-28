class Product < ApplicationRecord
  belongs_to :category
  enum gender: {men:0, women:1}

  mount_uploaders :images, ImagesUploader
  mount_uploaders :preview_images, PreviewImagesUploader
  has_many :colors
end
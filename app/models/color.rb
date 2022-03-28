class Color < ApplicationRecord
  belongs_to :product

  mount_uploader :color, ColorUploader
end

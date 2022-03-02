class Product < ApplicationRecord
  belongs_to :category
  enum gender: {men:0, women:1}
end

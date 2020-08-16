class Product < ApplicationRecord
  belongs_to :genre
  has_many :cart_items
  has_many :customers, through: :cart_items
  has_many :order_products
  attachment :image
end

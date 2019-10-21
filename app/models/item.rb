class Item < ApplicationRecord
  has_many :users, through: :orders
  has_many :users, through: :posts
  has_many :orders
  has_many :posts
end

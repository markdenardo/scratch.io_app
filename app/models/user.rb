class User < ApplicationRecord
has_many :orders
has_many :posts
has_many :items, through: :posts
has_many :items, through: :orders
end

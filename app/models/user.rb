class User < ApplicationRecord
  has_many :orders
  has_many :posts
  has_many :items, through: :posts
  has_many :items, through: :orders

  validates :username, uniqueness: true
  has_secure_password

  # def password=(plaintext_password)
  #   self.password_digest = BCrypt::Password.create(plaintext_password)
  # end

  # def authenticate(plaintext_password)
  #   BCrypt::Password.new(self.password_digest) == plaintext_password
  # end

end

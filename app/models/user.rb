class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :orders #needed???
  has_many :carted_products
  # has_many :orders, through: :carted_products  #does this replace line 4???
end

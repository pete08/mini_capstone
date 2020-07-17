class CategoryProduct < ApplicationRecord
  has_many :categorys
  has_many :products

end

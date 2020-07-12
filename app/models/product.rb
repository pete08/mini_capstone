class Product < ApplicationRecord
  # Name - presence - uniqueness #COMPLETE line 8
  # Price - presence - numericality and not a negative number or 0
  # Description - length of a minimum of 10 and a maximum of 500 characters
  # Bonus: Do a web search to find out how to add a validation to make sure the image is in a valid file format (like .jpg, .png, etc.) 

  belongs_to :supplier
  has_many :image
  
  validates :name, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in:10..500}



  def is_discounted?
    if price < 10
      TRUE
    else
      FALSE
    end
  end
  
  def tax
    tax = price * 0.09
    tax
  end

  def total
    total = price + tax
    total
  end

end
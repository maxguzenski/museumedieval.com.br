class ProductComment < Comment
  belongs_to :product
    
  validates_presence_of :product

end

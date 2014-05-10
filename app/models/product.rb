class Product < ActiveRecord::Base
  attr_accessible :code, :color, :description, :fabric, :price,:product_image
end

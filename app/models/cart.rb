class Cart
  attr_reader :items
  attr_reader :total_price

  def initialize
     @items = []
  	 @total_price = 0.0
  end

  def add_product(product)
  	line_item = Line_Item(product)
  	line_item.product =product
  	line_item.quantity = 1
  	line_item.price = product.price
  	@item << line_item
  	@total_price << line_item.price
  end

end

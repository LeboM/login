class PublicController < ApplicationController
  def products
    @products = Product.all
  end
  
  def add_to_cart
     product = Product.find(params[:id])   
     @cart = Cart.new
     @cart.add_product(product)
     redirect_to(:action => "show_cart")
  end

  def home
  end

  def contact
  end

  def about
  end

  def instructions
  end
end

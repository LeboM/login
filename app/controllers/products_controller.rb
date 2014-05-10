class ProductsController < ApplicationController

  def list
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])
  		if @product.update_attributes(params[:product])
	        	flash[:notice]='Product Updated'
	  			redirect_to action: "list"
  			else
  				redirect_to action: "edit"
        		flash[:notice]='Count not save your information'
  		end
  end

  def show
  	 @products = Product.find(params[:id])
  end

  def create
  	@product = Product.new(params[:product])
  		if @product.save
        flash[:notice]='Product Added'
  			redirect_to action: "list"
  		else
  			redirect_to action: "new"
        flash[:notice]='Count not save your information'
  		end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:code, :color, :description, :fabric, :price)
    end

end

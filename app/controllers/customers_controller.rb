class CustomersController < ApplicationController
  def index
  	@customers  = Customer.all
  end

  def new
  	@customer = Customer.new
  	@province_array = ["Eastern Cape", "Gauteng", "Kwazulu Natal", "Limpopo", "Mpumalanga", "Northern Cape", "North West", "Western Cape"]
  	@list = @province_array.collect()
  end

  def show
    @customer  = Customer.find(:id)
  end

  def edit
  	@customer  = Customer.find(:id)
  end

  def create
  	@user = Customer.new(params[:customer])
  		if @user.save
        flash[:notice]='Your account was created'
  			redirect_to action: "index"
  		else
  			redirect_to action: "new"
        flash[:notice]='Count not save your information'
  		end
  end 
end

class UsersController < ApplicationController
  
  def index
  	@users  = User.all
  end

  def new
  	@user = User.new
  	@users  = User.all
  end

  def show
    @users  = User.all
  end

  def edit
  end

  def create
  	@user = User.new(params[:user])
  		if @user.save
        flash[:notice]='Your account was created'
  			redirect_to action: "index"
  		else
  			redirect_to action: "new"
        flash[:notice]='Count not save your information'
  		end
  end 
end

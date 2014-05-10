class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :email, :name, :password, :phone, :postalcode, :province, :surname
end

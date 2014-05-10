class User < ActiveRecord::Base
  attr_accessible :age, :name, :surname
  validates :name, :surname, :age,:presence => false, :uniqueness => true
end

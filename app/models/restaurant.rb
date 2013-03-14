class Restaurant < ActiveRecord::Base
  attr_accessible :address, :name, :phone_number

  has_many :reviews 
end

class Restaurant < ActiveRecord::Base
  attr_accessible :address, :name, :phone_number

  has_many :reviews
  has_many :cuisines

end

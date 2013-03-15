class Cuisine < ActiveRecord::Base
  attr_accessible :cuisine

  belongs_to :restaurant 
end

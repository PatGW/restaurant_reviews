class Review < ActiveRecord::Base
  attr_accessible :review, :visit_date

  belongs_to :restaurant 
end

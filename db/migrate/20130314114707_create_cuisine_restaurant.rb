class CreateCuisineRestaurant < ActiveRecord::Migration
  def up
    create_table :cuisine_restaurant, :id => false do |t|
      t.references :restaurant
      t.references :review
    end
  end

  def down
    drop_table :cuisine_restaurant
  end
end

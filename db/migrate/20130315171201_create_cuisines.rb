class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :cuisine

      t.references :restaurants 

      t.timestamps
    end
  end
end

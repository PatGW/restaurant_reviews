class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review
      t.date :visit_date

      t.references :restaurant

      t.timestamps
    end
  end
end

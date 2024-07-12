class CreateCarReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :car_reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.integer :car_id

      t.timestamps
    end
  end
end

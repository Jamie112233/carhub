class CreateCarModels < ActiveRecord::Migration[7.1]
  def change
    create_table :car_models do |t|
      t.string :name
      t.integer :year
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end

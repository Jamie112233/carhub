class AddDetailsToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :color, :string
    add_column :cars, :price, :decimal
    add_column :cars, :mileage, :integer
    add_column :cars, :speed, :integer
  end
end

require 'faker'

# Clear existing data
Car.destroy_all
CarManufacturer.destroy_all

# Create Car Manufacturers
10.times do
  manufacturer = CarManufacturer.create!(
    name: Faker::Vehicle.manufacture,
    country: Faker::Address.country
  )

  # Create Cars for each manufacturer
  20.times do
    Car.create!(
      name: Faker::Vehicle.model,
      year: Faker::Vehicle.year,
      color: Faker::Color.color_name,
      price: Faker::Commerce.price(range: 10000..50000),
      mileage: Faker::Vehicle.mileage,
      speed: Faker::Number.between(from: 100, to: 300), # Speed in km/h
      car_manufacturer: manufacturer
    )
  end
end

puts "Created #{CarManufacturer.count} car manufacturers and #{Car.count} cars."

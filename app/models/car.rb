class Car < ApplicationRecord
  belongs_to :car_manufacturer

  validates :name, :year, :color, :price, :mileage, :speed, presence: true
end

class Car < ApplicationRecord
  belongs_to :car_manufacturer
  has_one_attached :image
end


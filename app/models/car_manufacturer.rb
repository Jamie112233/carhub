class CarManufacturer < ApplicationRecord
  has_many :cars
  validates :name, presence: true
  validates :country, presence: true
end

class CarManufacturer < ApplicationRecord
  has_many :cars
end

class HomeController < ApplicationController
  def index
    @car_manufacturers = CarManufacturer.limit(10)
  end
end

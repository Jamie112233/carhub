class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end
end

class CarsController < ApplicationController
  def index
    @cars = Car.page(params[:page]).per(10)
  end

  def show
    @car = Car.find(params[:id])
  end
end

class CarsController < ApplicationController
  def index
    @cars = if params[:search]
      Car.where('name LIKE ?', "%#{params[:search]}%")
    else
      Car.all
    end
  end
end

class CarsController < ApplicationController
  def index
    @cars = Car.all
    @car_manufacturers = CarManufacturer.all
    if params[:manufacturer_id].present?
      @cars = @cars.where(car_manufacturer_id: params[:manufacturer_id])
    end
  end
end

class CarManufacturersController < ApplicationController
  def index
    if params[:search]
      @car_manufacturers = CarManufacturer.where('name LIKE ?', "%#{params[:search]}%")
    else
      @car_manufacturers = CarManufacturer.all
    end
  end

  def show
    @car_manufacturer = CarManufacturer.find(params[:id])
  end
end

class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])  # Assuming you find a single car based on params[:id]
    @cars = [@car]  # Assuming you want to show a single car, not a collection
  end
end

# app/controllers/cars_controller.rb

class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
    @cars = [@car]
    @reviews = CarReviewService.new.fetch_reviews(@car.id)
  end
end

# app/controllers/cars_controller.rb

class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
    @cars = [@car]

    # Replace 'your_api_key_here' with your actual API key
    api_key = 'https://app.datashake.com/api/V2/profiles/review?job_id=345372183'
    @reviews = CarReviewService.new(api_key).fetch_reviews(@car.id)
  end
end


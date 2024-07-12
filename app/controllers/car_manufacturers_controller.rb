class CarManufacturersController < ApplicationController
  def index
    @car_manufacturers = CarManufacturer.all
  end

  def show
    @car_manufacturer = CarManufacturer.find(params[:id])
  end
end

class CarManufacturersController < ApplicationController
  def index
    @car_manufacturers = CarManufacturer.page(params[:page]).per(10)
  end

  def show
    @car_manufacturer = CarManufacturer.find(params[:id])
    @cars = @car_manufacturer.cars.page(params[:page]).per(10)
  end
end

class CarManufacturersController < ApplicationController
  def index
    @car_manufacturers = if params[:search]
      CarManufacturer.where('name LIKE ?', "%#{params[:search]}%")
    else
      CarManufacturer.all
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
    @cars = @car_manufacturer.cars
  end

  def edit
    @car_manufacturer = CarManufacturer.find(params[:id])
  end

  def update
    @car_manufacturer = CarManufacturer.find(params[:id])
    if @car_manufacturer.update(car_manufacturer_params)
      redirect_to @car_manufacturer, notice: 'Car manufacturer was successfully updated.'
    else
      render :edit
    end
  end

  private

  def car_manufacturer_params
    params.require(:car_manufacturer).permit(:name, :country)
  end
end

class CarManufacturersController < ApplicationController
  def show
    @car_manufacturer = CarManufacturer.find(params[:id])
    @cars = @car_manufacturer.cars.page(params[:page]).per(10)
  end
end
class CarManufacturersController < ApplicationController
  def index
    @car_manufacturers = if params[:search]
      CarManufacturer.where('name LIKE ?', "%#{params[:search]}%")
    else
      CarManufacturer.all
    end
  end

  def show
    @car_manufacturer = CarManufacturer.find(params[:id])
    @cars = @car_manufacturer.cars.page(params[:page]).per(10)
  end
end

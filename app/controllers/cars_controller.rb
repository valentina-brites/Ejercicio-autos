class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @cars = Car.new
  end

  def create
    @cars = Car.create(car_params)

    if @car.save
      redirect_to car_path(@car), notice: 'Car create succesfully'
    else
      render :new
    end
  end

  def show
    @cars = Car.find(car_params[:id])
  end
end

private
  def car_params
    params.require(:car).permit(:make, :mode, year)
  end
end  

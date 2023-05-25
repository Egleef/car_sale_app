class CarsController < ApplicationController
  
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = current_user.cars.new(car_params)
    
    if @car.save
      flash[:notice] = 'se salvo un auto correctamente'
      redirect_to car_path(@car)
    else
      flash[:error] = @car.errors.full_messages
      render :new
    end
  end

  def show
   @car = Car.find(params[:id])
  end

  private
  def car_params
    params.require(:car).permit(:brand, :model, :price)
  end
end

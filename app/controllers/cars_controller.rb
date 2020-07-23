class CarsController < ApplicationController

    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end
    
    def new 
        @cars = Car.all
        @car = Car.new
    end           

    def create
        @car = Car.create(car_params)
        if @car.valid?
            redirect_to car_path(@car)
        else  
            flash[:my_errors] = @car.errors.full_messages
            redirect_to new_car_path
        end    
    end 
    
    def edit
        @cars = Car.all
        @car = Car.find(params[:id])
    end 
    
    def update
        @car = Car.find(params[:id])
        if @car.update(car_params)
        redirect_to car_path(@car)
        else  
            flash[:my_errors] = @car.errors.full_messages
            redirect_to edit_car_path
        end    
    end    
#destroy
    def destroy
        @car = Car.find(params[:id])
        @car.destroy
        redirect_to cars_path
    end
        
private
def car_params
    params.require(:car).permit(:manufacture, :make, :model, :color, :drive_type, :car_options, :img_url)
end

end

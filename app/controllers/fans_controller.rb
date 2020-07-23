class FansController < ApplicationController
#index
def index
    @fans = Fan.all
end    
#show
def show
    @fan = Fan.find(params[:id])
end    
#new
def new
    @fan = Fan.new
end    
#create
def create
    @fan= Fan.create(fan_params)
    if @fan.valid?
        redirect_to fan_path(@fan)
    else  
        flash[:my_errors] = @fan.errors.full_messages
        redirect_to new_fan_path
    end    
end    
#edit
def edit
    @fan = Fan.find(params[:id])
end    
#update
def update
    @fan = Fan.find(params[:id])
    if @fan.update(fan_params)
    redirect_to fan_path(@fan)
    else 
        flash[:my_errors] = @fan.errors.full_messages
        redirect_to edit_fan_path 
    end    
end    
#delete
def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy
    redirect_to fans_path 
end    
#private params
def fan_params
    params.require(:fan).permit(:name, :age, :city, :state, :img_url)
end    
end

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
    redirect_to fan_path(@fan)
end    
#edit
def edit
    @fan = Fan.find(params[:id])
end    
#update
def update
    @fan = Fan.find(params[:id])
    @fan.update(fan_params)
    redirect_to fan_path(@fan)
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

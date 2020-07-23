class LikesController < ApplicationController
    #new
    def new
        @fan = Fan.all
        @car = Car.all
        @like = Like.new
    end    
    #create
    def create
        @like = Like.create(like_params)
        redirect_to fan_path(@like.fan)
    end    
    #edit
    def edit
        @fan = Fan.all
        @car = Car.all
        @like = Like.find(params[:id])
    end    
    #update
    def update
        @like = Like.find(params[:id])
        @like.update(like_params)
        redirect_to fan_path(@like.fan)
    end

    private
    def like_params
        params.require(:like).permit(:fan_id, :car_id)
    end    
end

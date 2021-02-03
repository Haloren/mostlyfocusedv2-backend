class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    #RETURNS THE USERS WEATHER DATA FROM https://openweathermap.org/weather-data
    def show
        # byebug
        user = User.first
        weather = WeatherData.new(user.zip)
        # render json: user
        render json: weather
    end

   def update
        # byebug
        user = User.first
        if user
            user.update(zip: params["zip"])
            render json: weather
        else 
            render json: {message: "Unable to update Zip Code"}
        end
   end
end
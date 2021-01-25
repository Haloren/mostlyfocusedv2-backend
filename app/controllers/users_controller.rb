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

end
class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        # byebug
        user = User.first
        weather = WeatherData.new(user.zip)
        # render json: user
        render json: weather
    end

end
class UsersController < ApplicationController

    def show
        # byebug
        user = User.first
        weather = WeatherData.new(user.zip)
        # render json: user
        render json: weather
    end

end
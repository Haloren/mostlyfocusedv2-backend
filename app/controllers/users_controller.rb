class UsersController < ApplicationController

    def show
        user = User.first
        weather = WeatherData.new(zip)
        render  json: user
    end

end
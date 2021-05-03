class WeathersController < ApplicationController
  include WeatherJson
  before_action :now_weather_json

  def index
    @now_weather = now_weather_json["weather"][0]["description"]
    render json: @now_weather
  end
end

class BotsController < ApplicationController
  include WeatherJson

  def index

    # 現在天気
    now_weather_uri = URI.parse("https://api.openweathermap.org/data/2.5/weather?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{Rails.application.credentials[:OPEN_WETHER_MAP_API]}")
    now_weather_response = Net::HTTP.get_response(now_weather_uri)
    now_weather_json = JSON.parse(now_weather_response.body)
    now_weather = now_weather_json["weather"][0]["description"]

    gon.now_weather = now_weather
  end

end

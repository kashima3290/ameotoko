module OpenWeatherMapApi
  extend ActiveSupport::Concern
  def now_weather_json
    now_weather_uri = URI.parse("https://api.openweathermap.org/data/2.5/weather?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{Rails.application.credentials[:OPEN_WETHER_MAP_API]}")
    now_weather_response = Net::HTTP.get_response(now_weather_uri)
    json = JSON.parse(now_weather_response.body)
  end

  def forecast_json
    forecast_uri = URI.parse("https://api.openweathermap.org/data/2.5/forecast?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{Rails.application.credentials[:OPEN_WETHER_MAP_API]}")
    forecast_response = Net::HTTP.get_response(forecast_uri)
    forecast_json = JSON.parse(forecast_response.body)
  end
end
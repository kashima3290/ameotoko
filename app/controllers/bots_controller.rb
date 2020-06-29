class BotsController < ApplicationController
  require 'line/bot'
  protect_from_forgery :except => [:callback]

  def index

    # 現在天気
    now_weather_uri = URI.parse("https://api.openweathermap.org/data/2.5/weather?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{ENV['OPEN_WETHER_MAP_API']}")
    now_weather_response = Net::HTTP.get_response(now_weather_uri)
    # now_weather = JSON.parse(now_weather_response.body)["weather"][0]["description"]

    # 天気予報
    # forecasts = []
    # forecast_response = open("http://api.openweathermap.org/data/2.5/forecast?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{ENV['OPEN_WETHER_MAP_API']}")
    # JSON.parse(forecast_response.read)["list"].each do |list|
    #   forecast = {}
    #   unixtime = list["dt"]
    #   jst = Time.at(unixtime) # 日本時間に変更
    #   forecast[:hour] = jst.strftime("%H時") # 〜時で取得
    #   forecasts << forecast
    # end

    gon.now_weather = now_weather
    # gon.today_forecast = today_forecast
  end

end

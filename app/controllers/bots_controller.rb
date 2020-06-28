class BotsController < ApplicationController
  require 'line/bot'
  require "open-uri"
  protect_from_forgery :except => [:callback]

  def index
    # jsonの多元次ハッシュから天気だけ取得し変数now_weatherに代入
    today_forecast = []

    # 現在天気
    now_weather_response = open("https://api.openweathermap.org/data/2.5/weather?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{ENV['OPEN_WETHER_MAP_API']}")
    now_weather = JSON.parse(now_weather_response.read)["weather"][0]["description"]

    # 天気予報
    today_forecast_response = open("http://api.openweathermap.org/data/2.5/forecast?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{ENV['OPEN_WETHER_MAP_API']}")
    JSON.parse(today_forecast_response.read)["list"].each do |list|
      unixtime = list["dt"]
      time = Time.at(unixtime) # 日本時間に変更
      hour = time.strftime("%H時") # 〜時で取得
    end

    gon.now_weather = now_weather
    gon.today_forecast = today_forecast
  end

end

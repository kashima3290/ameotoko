class BotsController < ApplicationController
  require 'line/bot'
  require 'json'
  require 'open_weather'
  protect_from_forgery :except => [:callback]

  def index
    # OWM API取得
    options = { units: "metric", APPID: ENV['OPEN_WETHER_MAP_API'] }
    options[:lang] = "ja"
    # 今日の12時までの天気予報を3時間ごとに取得
    options[:cnt] = 6
    # jsonの多元次ハッシュから天気だけ取得し変数now_weatherに代入
    now_weather = OpenWeather::Current.city("Osaka-shi", options)["weather"][0]["description"]
    today_forecast = []
    OpenWeather::Forecast.city("Osaka-shi", options)["list"].each do |f|
      today_forecast << f["weather"][0]["description"]
    end
    gon.now_weather = now_weather
    gon.today_forecast = today_forecast
  end

end

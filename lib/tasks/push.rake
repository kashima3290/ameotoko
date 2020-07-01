namespace :push_line do
  # 現在天気取得
  now_weather_uri = URI.parse("https://api.openweathermap.org/data/2.5/weather?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{Rails.application.credentials[:OPEN_WETHER_MAP_API]}")
  now_weather_response = Net::HTTP.get_response(now_weather_uri)
  now_weather_json = JSON.parse(now_weather_response.body)
  now_weather = now_weather_json["weather"][0]["description"]

  # 天気予報取得
  forecasts = []
  forecast_uri = URI.parse("https://api.openweathermap.org/data/2.5/forecast?q=Osaka-shi,jp&units=metric&lang=ja&APPID=#{Rails.application.credentials[:OPEN_WETHER_MAP_API]}")
  forecast_response = Net::HTTP.get_response(forecast_uri)
  forecast_json = JSON.parse(forecast_response.body)
  forecast_json["list"][0..4].each do |list| # 21時まで3時間づつ予報を取得
    forecast = {}
    unixtime = list["dt"]
    jst = Time.at(unixtime) # 日本時間に変更
    forecast[:hour] = jst.strftime("%H時") # 〜時で取得
    if forecast[:hour][0...1] == "0" # 一桁の時間の0を削除
      forecast[:hour][0...1] = ""
    end
    forecast[:weather] = list["weather"][0]["description"] # 天気を取得
    forecasts << forecast
  end

  rainy = []
  forecasts.each do |forecast|
    if forecast[:weather].include?("雨") == true # 雨があれば降る時間を保存
      rainy << forecast
    end
  end

  desc "push_line"
  task push_line_message_morning: :environment do
    message = {
      type: "text",
      text: "今日は雨降るぞ"
    }
    client = Line::Bot::Client.new { |config|
      config.channel_secret = Rails.application.credentials[:LINE_CHANNEL_SECRET]
      config.channel_token = Rails.application.credentials[:LINE_CHANNEL_TOKEN]
    }
    response = client.broadcast(message)
  end

end
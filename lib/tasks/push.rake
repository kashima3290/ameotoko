namespace :push_line do
  desc "push_line"
  task push_line_message_morning: :environment do
    # 土曜日と日曜日は通知しない
    unless Date.today.strftime("%A") == "Sunday" || Date.today.strftime("%A") == "Saturday"

      # 現在天気取得
      include WeatherJson # now_weather_json・forecast_jsonをconcernから取得
      now_weather = now_weather_json["weather"][0]["description"]

      # 天気予報取得
      forecasts = []
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

      # 雨があれば降る時間を保存
      rains = []
      forecasts.each do |forecast|
        if forecast[:weather].include?("雨") == true
          rains << forecast
        end
      end

      # 雨が降る日は通知する
      weather_message = "\r\n"
      if rains.present?
        rains.each do |rain|
          weather_message << "#{rain[:hour]}から#{rain[:weather]}\r\n"
        end
        message = {
          type: "text",
          text: "今日は傘持ってけよ\r\n\ #{weather_message}"
        }
        client = Line::Bot::Client.new { |config|
          config.channel_secret = Rails.application.credentials[:LINE_CHANNEL_SECRET]
          config.channel_token = Rails.application.credentials[:LINE_CHANNEL_TOKEN]
        }
        response = client.broadcast(message)
      end

    end
  end
end
class LinebotController < ApplicationController
#   require 'line/bot'
#   require 'json'
#   require 'open_weather'
#   protect_from_forgery :except => [:callback]

#   # OWS API取得
#   options = { units: "metric", APPID: ENV['OPEN_WETHER_MAP_API'] }
#   # jsonの多元次ハッシュから天気だけ取得し変数weatherに代入
#   weather = OpenWeather::Current.city("Osaka-shi", options)["weather"][0]["main"]

#   # クライアント認証
#   def client
#     @client ||= Line::Bot::Client.new { |config|
#       config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
#       config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
#     }
#   end

#   # サーバー返答アクション
#   def callback
#     body = request.body.read
#     signature = request.env['HTTP_X_LINE_SIGNATURE']
#     unless client.validate_signature(body, signature)
#       head :bad_request
#     end
#     # メッセージカスタム
#     events = client.parse_events_from(body)
#     events.each { |event|
#       case event
#       when Line::Bot::Event::Message
#         case event.type
#         when Line::Bot::Event::MessageType::Text
#           message = {
#             type: 'text',
#             text: event.message['text']
#           }
#           client.reply_message(event['replyToken'], message)
#         end
#       end
#     }
#     head :ok
#   end

# end

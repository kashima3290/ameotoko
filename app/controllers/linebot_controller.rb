class LinebotController < ApplicationController
  include CommonActions
  require 'line/bot'
  require 'json'
  protect_from_forgery except: :callback

  # サーバー返答アクション
  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']
    unless client.validate_signature(body, signature)
      head :bad_request
    end
    # メッセージカスタム
    events = client.parse_events_from(body)
    events.each { |event|
      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          if event.message['text'].include?('今')
            response = "今の天気"
          elsif event.message['text'].include?('予報')
            response = "天気予報"
          else
            response = "大阪に雨が降る日は、\r\n\毎朝7時に予報するよ\r\n\r\n\今の天気情報=>「今」\r\n\これからの天気予報=>「予報」"
          end
          message = {
            type: 'text',
            text: response
          }
          client.reply_message(event['replyToken'], message)
        end
      end
    }
    head :ok
  end

  private
  # クライアント認証
  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = Rails.application.credentials[:LINE_CHANNEL_SECRET]
      config.channel_token = Rails.application.credentials[:LINE_CHANNEL_TOKEN]
    }
  end

end
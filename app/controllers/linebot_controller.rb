class LinebotController < ApplicationController
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
      case event.message['text']
      when '今日' then
        responce = "今日の天気は"
      else
        response = "1週間先までの大阪の天気を予報するで"
      end

      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
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
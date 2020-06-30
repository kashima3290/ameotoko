namespace :push_line do
  desc "push_line"
  task push_line_message: :environment do
    message = {
      type: "text",
      text: "テスト"
    }
    client = Line::Bot::Client.new { |config|
      config.channel_secret = Rails.application.credentials[:LINE_CHANNEL_SECRET]
      config.channel_token = Rails.application.credentials[:LINE_CHANNEL_TOKEN]
    }
    response = client.broadcast(message)
  end
end
class CreateWeekWeatherNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :week_weather_notifications do |t|

      t.timestamps
    end
  end
end

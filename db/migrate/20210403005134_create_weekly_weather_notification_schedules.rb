class CreateWeeklyWeatherNotificationSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :weekly_weather_notification_schedules do |t|

      t.timestamps
    end
  end
end

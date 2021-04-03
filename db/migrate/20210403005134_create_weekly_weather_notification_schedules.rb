class CreateWeeklyWeatherNotificationSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :weekly_weather_notification_schedules do |t|
      t.references :line_config, null: false
      t.time :notification_time
      t.timestamps
    end
  end
end

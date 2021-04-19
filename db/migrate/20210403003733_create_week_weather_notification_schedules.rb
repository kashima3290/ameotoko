class CreateWeekWeatherNotificationSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :week_weather_notification_schedules do |t|
      t.references :line_config, null: false
      t.integer :week_number, null: false
      t.time :notification_time
      t.timestamps
    end
  end
end

class CreateLineConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :line_configs do |t|
      t.references :user, null: false
      t.boolean :notification_flag, null: false
      t.string :place, null: false
      t.boolean :weekly_weather_notification_flag, null: false
      t.boolean :week_weather_notification_flag, null: false
      t.boolean :umbrella_takeaway_flag, null: false
      t.timestamps
    end
  end
end

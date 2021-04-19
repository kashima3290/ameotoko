class CreateUmbrellaTakeawaySchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :umbrella_takeaway_schedules do |t|
      t.references :line_config, null: false
      t.time :notification_time, null: false
      t.timestamps
    end
  end
end

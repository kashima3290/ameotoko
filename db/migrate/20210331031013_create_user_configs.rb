class CreateUserConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_configs do |t|
      t.references :user, null: false
      t.boolean :notification_flag, null: false
      t.string :place, null: false
      t.timestamps
    end
  end
end

class CreateLineConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :line_configs do |t|
      t.references :user, null: false, default: ""
      t.boolean :notification_flag, null: false, default: true
      t.string :place, null: false
      t.timestamps
    end
  end
end

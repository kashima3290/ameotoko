class CreateUserConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_configs do |t|

      t.timestamps
    end
  end
end

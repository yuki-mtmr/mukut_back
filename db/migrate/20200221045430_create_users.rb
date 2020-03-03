class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "user_name", null: false
      t.string "email", null: false
      t.string "gender"
      t.date "birthday"
      t.integer "busy_daytime_id"
      t.timestamps
    end
  end
end

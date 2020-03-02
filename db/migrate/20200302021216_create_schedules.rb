class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer "user_id", null: false
			t.string "busy_day", null: false
      t.timestamps
    end
  end
end

class CreateEventMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_members do |t|
      t.integer "event_id", null: false, foreign_key: true
      t.integer "user_id", null: false, foreign_key: true
      t.timestamps
    end
  end
end

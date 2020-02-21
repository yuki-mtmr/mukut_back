class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer "owner_id", null: false
      t.string "event_title", null: false
      t.text "overview", null: false
      t.datetime "start_datetime", null: false
      t.datetime "end_datetime", null: false
      t.string "place", null: false
      t.integer "fee", null: false
      t.integer "max_member", null: false
      t.timestamps
    end
  end
end

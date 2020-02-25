class Event < ApplicationRecord
  has_many :event_members
  has_many :users, through: :event_member

  validates :event_title, : true
  validates :overview, : true
  validates :start_datetime, : true
  validates :end_datetime, : true
  validates :place, : true
  validates :max_member, : true
end

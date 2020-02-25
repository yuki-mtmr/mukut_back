class Event < ApplicationRecord
  has_many :event_members
  has_many :users, through: :event_member

  validates :event_title, presence: true
  validates :overview, presence: true
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :place, presence: true
  validates :max_member, presence: true
end

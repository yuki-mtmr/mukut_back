class Event < ApplicationRecord
  has_many :event_members
  has_many :users, through: :event_member

  validates :event_title, presence: true
  validates :place, presence: true
  validates :max_member, presence: true
  validates :overview, presence: true

end

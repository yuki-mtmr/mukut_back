class Event < ApplicationRecord
  has_many :event_members
  has_many :users, through: :event_member

  validates :event_title, presence: true, length: { maximum: 255 }
  validates :place, presence: true, length: { maximum: 255 }
  validates :max_member, presence: true, length: { maximum: 5 }
  validates :overview, presence: true

end

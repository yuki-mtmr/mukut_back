class Event < ApplicationRecord
  has_many :event_members
  has_many :users, through: :event_member

end

class Schedule < ApplicationRecord
  validates :busy_day,  uniqueness: { scope: [:user_id]  }
end
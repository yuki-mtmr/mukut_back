class Schedule < ApplicationRecord
  validates :busy_day,  uniqueness: { scope: [:user_id]  }
  before_save :trimming_dateTime

  private
    def trimming_dateTime
      n = self.busy_day
      while n.length > 10
        n = n.chop!
      end
    end
end
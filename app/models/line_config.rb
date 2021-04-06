class LineConfig < ApplicationRecord
  belongs_to :user
  has_one :weekly_weather_notification_schedules
  has_many :week_weather_notification_schedules
  has_one :umbrella_takeaway_schedules
end

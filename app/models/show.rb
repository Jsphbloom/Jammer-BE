class Show < ApplicationRecord
  has_many :schedule_shows
  has_many :schedules, through: :schedule_shows
  has_many :show_users
  has_many :users, through: :show_users
end

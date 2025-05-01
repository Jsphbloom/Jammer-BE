class User < ApplicationRecord
  has_many :schedules
  has_many :show_users
  has_many :shows, through: :show_users
end

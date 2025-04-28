class AddScheduleIdToScheduleShows < ActiveRecord::Migration[7.1]
  def change
    add_column :schedule_shows, :schedule_id, :integer
  end
end

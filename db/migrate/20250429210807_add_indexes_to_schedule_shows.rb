class AddIndexesToScheduleShows < ActiveRecord::Migration[7.1]
  def change
    add_index :schedule_shows, :schedule_id
    add_index :schedule_shows, :show_id
    add_index :schedule_shows, [:schedule_id, :show_id], unique: true
  end
end

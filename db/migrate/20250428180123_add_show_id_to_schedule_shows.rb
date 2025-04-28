class AddShowIdToScheduleShows < ActiveRecord::Migration[7.1]
  def change
    add_column :schedule_shows, :show_id, :integer
  end
end

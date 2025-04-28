class CreateScheduleShows < ActiveRecord::Migration[7.1]
  def change
    create_table :schedule_shows do |t|

      t.timestamps
    end
  end
end

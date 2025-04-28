class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.string :name, null: false
      t.datetime :start_time
      t.datetime :end_time
      t.string :stage
      t.timestamps
    end
  end
end

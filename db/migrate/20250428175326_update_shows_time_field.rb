class UpdateShowsTimeField < ActiveRecord::Migration[7.1]
  def change
    remove_column :shows, :start_time, :datetime
    remove_column :shows, :end_time, :datetime
    add_column :shows, :time, :string
  end
end
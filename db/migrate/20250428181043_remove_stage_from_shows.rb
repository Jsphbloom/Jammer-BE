class RemoveStageFromShows < ActiveRecord::Migration[7.1]
  def change
    remove_column :shows, :stage, :string
  end
end

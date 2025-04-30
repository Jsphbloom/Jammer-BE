class CreateShowUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :show_users do |t|
      t.references :show, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

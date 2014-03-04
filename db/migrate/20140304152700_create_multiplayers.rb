class CreateMultiplayers < ActiveRecord::Migration
  def change
    create_table :multiplayers do |t|
      t.string :name
      t.integer :user_id
      t.integer :game_id
      t.integer :permission_type

      t.timestamps
    end
  end
end

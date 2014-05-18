class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :size_limit
      t.integer :system_fragments

      t.timestamps
    end
  end
end

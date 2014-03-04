class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :gamesettings_id
      t.string :name
      t.integer :difficulty
      t.integer :user_id
      t.integer :multiplayer_id

      t.timestamps
    end
  end
end

class CreatePlayerFragments < ActiveRecord::Migration
  def change
    create_table :player_fragments do |t|
      t.string :display_text
      t.string :function
      t.integer :time
      t.integer :length

      t.timestamps
    end
  end
end

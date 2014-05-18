class AddMusicToGame < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :games do |t|
        dir.up   { t.column :music, :string }
        dir.down { t.remove :music }
      end
    end
  end
end

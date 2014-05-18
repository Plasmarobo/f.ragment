class AddAudioToPreferences < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :user_preferences do |t|
        dir.up   { t.column :audio, :boolean }
        dir.down { t.remove :audio }
      end
    end
  end
end

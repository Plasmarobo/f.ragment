class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.integer :user_id
      t.integer :text_speed
      t.string :theme
      t.boolean :autoplay
      t.boolean :animation

      t.timestamps
    end
  end
end

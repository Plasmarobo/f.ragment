class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :random_seed
      t.integer :dialog_id
      t.integer :time_limit
      t.integer :matrix_speed
      t.integer :program_id
      t.string :theme

      t.timestamps
    end
  end
end

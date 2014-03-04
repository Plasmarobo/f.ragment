class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :exec_time
      t.string :result_hash
      t.integer :item_id
      t.integer :reward

      t.timestamps
    end
  end
end

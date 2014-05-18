class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :program_id
      t.integer :sequence

      t.timestamps
    end
  end
end

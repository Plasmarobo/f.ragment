class CreateSystemFragmentReferences < ActiveRecord::Migration
  def change
    create_table :system_fragment_references do |t|
      t.integer :block_id
      t.integer :systemfragment_id
      t.integer :thread
      t.integer :line

      t.timestamps
    end
  end
end

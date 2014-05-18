class CreatePlayerFragmentReferences < ActiveRecord::Migration
  def change
    create_table :player_fragment_references do |t|
      t.integer :block_id
      t.integer :playerfragment_id
      t.integer :thread
      t.integer :line

      t.timestamps
    end
  end
end

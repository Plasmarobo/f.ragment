class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.integer :game_id
      t.integer :variable_limit
      t.integer :register_limit

      t.timestamps
    end
  end
end

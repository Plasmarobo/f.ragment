class CreateWorkspaceEntries < ActiveRecord::Migration
  def change
    create_table :workspace_entries do |t|
      t.integer :workspace_id
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end

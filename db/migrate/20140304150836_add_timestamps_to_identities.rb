class AddTimestampsToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :created_at, :datetime
    add_column :identities, :updated_at, :datetime
  end
end

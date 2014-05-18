class AddJavascriptToProgram < ActiveRecord::Migration
  def change
     reversible do |dir|
      change_table :programs do |t|
        dir.up   { t.column :javascript, :string }
        dir.down { t.remove :javascript }
      end
    end
  end
end

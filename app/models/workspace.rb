class Workspace < ActiveRecord::Base
  belongs_to :game
  has_many :workspace_entry

  def set(name, value, type)
  end

  def get(name, value, type)
end

require 'json'

class Game < ActiveRecord::Base
  has_one :game_sync
  has_many :multiplayer
  has_one :workspace
  belongs_to :level
  belongs_to :user

  def build_from_json(file)
    json = JSON.parse(File.read(file))
    self.program = json.root.program
    self.background = json.root.background.file == "" ? json.root.background.color : json.root.background.file
    self.music = json.root.music.file
  end
  
end

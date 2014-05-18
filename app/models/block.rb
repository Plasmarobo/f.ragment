class Block < ActiveRecord::Base
  belongs_to :program
  has_many :player_fragment_references
  has_many :system_fragment_references

  def get_ordered_fragments()
    fragments = self.player_fragment_references +  self.system_fragment_references
    fragments.sort! do |a, b| 
      case 
      when a.line < b.line
        -1
      when a.line > b.line
        1
      else
        a <=> b
      end
    end
    return fragments
  end
end

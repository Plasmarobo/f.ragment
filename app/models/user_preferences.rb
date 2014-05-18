class UserPreferences < ActiveRecord::Base

  def audio?
    #return self.audio
    return false
  end
end

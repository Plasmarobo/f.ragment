class GameSync < ActiveRecord::Base
  belongs_to :Game

  def genterate_sync(params)
    sync_params = []
    sync[:time_offset] = Time.now - params[:client_time] 
    sync[:start_time] = Time.now
    sync[:pause_time] = nil
    sync[:game_id] = params[:game_id]
    sync[:time_id] = nil
    sync[:time_limit] = "time_limit"
    t.boolean  "started"
    t.datetime "pause_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "client_start"
    t.datetime "client_pause"
    t.datetime "time_offset" 
  end
end

json.array!(@games) do |game|
  json.extract! game, :id, :gamesettings_id, :name, :difficulty, :user_id, :multiplayer_id
  json.url game_url(game, format: :json)
end

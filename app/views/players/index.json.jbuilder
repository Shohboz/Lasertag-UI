json.array!(@players) do |player|
  json.extract! player, :id, :name, :crew_id
  json.url player_url(player, format: :json)
end

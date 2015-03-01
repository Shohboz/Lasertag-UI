json.array!(@games) do |game|
  json.(game, :id, :start_at)
  json.crews game.crews do |team|
  	json.id team.id
  	json.name team.name
  	json.players team.players do |player|
  		json.id player.id
  		json.name player.name
  	end
  end
end

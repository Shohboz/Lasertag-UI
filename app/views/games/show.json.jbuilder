json.extract! @game, :id, :created_at, :updated_at
json.crews @game.crews.group(:id).each do |team|
  	json.id team.id
  	json.name team.name
  	json.players team.subscriptions.where(game_id: @game).each do |subscriber|
  		if subscriber.player
  			json.id subscriber.player.id
  			json.name subscriber.player.name
  			json.points subscriber.points
  		end
  	end
end
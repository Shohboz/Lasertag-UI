class Subscription < ActiveRecord::Base
	self.primary_keys = :game_id, :player_id
	belongs_to :crew
	belongs_to :game
	belongs_to :player
end

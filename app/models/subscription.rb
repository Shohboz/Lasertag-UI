class Subscription < ActiveRecord::Base
	include PublicActivity::Model
  	tracked owner: ->(controller, model) { controller && controller.current_user }

	self.primary_keys = :game_id, :player_id
	belongs_to :crew
	belongs_to :game
	belongs_to :player
	belongs_to :user
end

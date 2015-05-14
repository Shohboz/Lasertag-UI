class Subscription < ActiveRecord::Base
	belongs_to :crew
	belongs_to :game
	belongs_to :player
end

class Subscription < ActiveRecord::Base
	belongs_to :crew
	belongs_to :game
end

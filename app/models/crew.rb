class Crew < ActiveRecord::Base
	has_many :subscriptions
	has_many :games, through: :subscriptions

	def total_points
		subscriptions.sum :points
	end
end

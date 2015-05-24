class Player < ActiveRecord::Base
	has_many :subscriptions, dependent: :destroy
	has_many :games, through: :subscriptions

	def total_points
		subscriptions.sum :points
	end
end

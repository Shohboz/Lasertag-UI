class Crew < ActiveRecord::Base
	include PublicActivity::Model
  	tracked owner: ->(controller, model) { controller && controller.current_user }

	has_many :subscriptions
	has_many :games, through: :subscriptions
	belongs_to :user

	def total_points
		subscriptions.sum :points
	end
end

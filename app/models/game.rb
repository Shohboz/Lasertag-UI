class Game < ActiveRecord::Base
	include PublicActivity::Model
  	tracked owner: ->(controller, model) { controller && controller.current_user }

	has_many :subscriptions, dependent: :destroy
	has_many :crews, through: :subscriptions
	has_many :players, through: :subscriptions
	belongs_to :user
end
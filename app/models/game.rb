class Game < ActiveRecord::Base
	has_many :subscriptions, dependent: :destroy
	has_many :crews, through: :subscriptions
	has_many :players, through: :subscriptions
end
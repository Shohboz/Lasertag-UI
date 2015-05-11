class Game < ActiveRecord::Base
	has_many :subscriptions
	has_many :crews, through: :subscriptions
end

class Player < ActiveRecord::Base
	has_many :subscriptions
	has_many :games, through: :subscriptions
end

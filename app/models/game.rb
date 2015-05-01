class Game < ActiveRecord::Base
	#has_many :crews
	has_and_belongs_to_many :crews
	has_many :players
end

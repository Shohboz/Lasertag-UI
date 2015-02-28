class GamesController < ApplicationController
	before_action :set_game, only: [:show, :edit, :update, :destroy]

	# GET /games
	# GET /games.json
	def index
	  @games = Game.all
	end
end

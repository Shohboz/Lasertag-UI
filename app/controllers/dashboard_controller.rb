class DashboardController < ApplicationController
  def index
  	@players = Player.all
  end
end

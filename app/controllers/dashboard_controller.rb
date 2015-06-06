class DashboardController < ApplicationController
  def index
  	@current = current_user
  	@activities = PublicActivity::Activity.order("created_at desc").limit(8)
  	@players = Player.all.order("updated_at desc").limit(10)
  	@games = Game.all.order("updated_at desc").limit(10)
  end
end

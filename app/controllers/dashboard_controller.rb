class DashboardController < ApplicationController
  def index
  	@current = current_user
  	@activities = PublicActivity::Activity.order("created_at desc").limit(8)
  	@players = Player.all.order("created_at desc")
  end
end

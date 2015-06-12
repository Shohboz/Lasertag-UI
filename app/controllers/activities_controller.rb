class ActivitiesController < ApplicationController
  def index
  	@current = current_user
  	@activities = PublicActivity::Activity.order("created_at desc").page(params[:page]).per(15)
  end
end

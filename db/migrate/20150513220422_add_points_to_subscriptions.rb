class AddPointsToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :points, :integer
  end
end

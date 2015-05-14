class AddPlayerIdToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :player_id, :integer
  end
end

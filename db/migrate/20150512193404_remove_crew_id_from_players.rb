class RemoveCrewIdFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :crew_id, :integer
  end
end

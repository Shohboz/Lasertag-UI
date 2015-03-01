class AddCrewIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :crew_id, :integer
  end
end

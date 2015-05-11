class RemoveGameIdFromCrews < ActiveRecord::Migration
  def change
    remove_column :crews, :game_id, :integer
  end
end

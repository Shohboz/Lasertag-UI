class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :games, :startAt, :start_at
  end
end

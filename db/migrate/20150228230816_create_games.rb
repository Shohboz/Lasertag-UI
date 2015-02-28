class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.timestamp :startAt

      t.timestamps null: false
    end
  end
end

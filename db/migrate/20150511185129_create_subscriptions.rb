class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions, :id => false do |t|
      t.integer :crew_id
      t.integer :game_id

      t.timestamps null: false
    end
  end
end

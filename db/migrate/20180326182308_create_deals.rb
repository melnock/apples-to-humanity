class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :hand_id

      t.timestamps
    end
  end
end

class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :black_card_id
      t.integer :game_id

      t.timestamps
    end
  end
end

class CreateHands < ActiveRecord::Migration[5.1]
  def change
    create_table :hands do |t|
      t.integer :deal_id
      t.integer :card_id

      t.timestamps
    end
  end
end

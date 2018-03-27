class AddColumnLeaderToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :leader, :boolean
  end
end

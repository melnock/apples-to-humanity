class AddColumnPlayedToRounds < ActiveRecord::Migration[5.1]
  def change
    add_column :rounds, :played, :boolean, default: false
  end
end

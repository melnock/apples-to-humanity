class AddColumnDesiredNumberOfRoundsToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :desired_number_of_rounds, :string
  end
end

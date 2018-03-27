class AddColumnDesiredGroupSizeToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :desired_group_size, :string
  end
end

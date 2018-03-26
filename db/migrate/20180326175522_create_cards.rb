class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :content
      t.boolean :black

      t.timestamps
    end
  end
end

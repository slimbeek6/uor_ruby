class AddHomeIdToChores < ActiveRecord::Migration[7.0]
  def change
    add_column :chores, :home_id, :integer
    add_index :chores, :home_id
  end
end

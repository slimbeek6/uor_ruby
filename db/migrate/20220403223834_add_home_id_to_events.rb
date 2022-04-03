class AddHomeIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :home_id, :integer
    add_index :events, :home_id
  end
end

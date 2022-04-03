class AddHomeIdToEpxenses < ActiveRecord::Migration[7.0]
  def change
    add_column :epxenses, :home_id, :integer
    add_index :epxenses, :home_id
  end
end

class AddHomeIdToRoommates < ActiveRecord::Migration[7.0]
  def change
    add_column :roommates, :home_id, :integer
    add_index :roommates, :home_id
  end
end

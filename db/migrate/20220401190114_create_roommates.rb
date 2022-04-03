class CreateRoommates < ActiveRecord::Migration[7.0]
  def change
    create_table :roommates do |t|
      t.string :user_name
      t.string :email
      t.string :phone
      t.string :emergency_contact
      t.string :emergency_phone
      t.belongs_to :home, index: true

      t.timestamps
    end
  end
end

class CreateEpxenses < ActiveRecord::Migration[7.0]
  def change
    create_table :epxenses do |t|
      t.string :expense_name
      t.float :expense_amount
      t.date :exp_date
      t.string :expenseType
      t.boolean :paid
      t.string :paidBy
      t.belongs_to :home, index: true

      t.timestamps
    end
  end
end

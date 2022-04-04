json.extract! epxense, :id, :expense_name, :expense_amount, :exp_date, :expenseType, :paid, :paidBy, :home_id, :created_at, :updated_at
json.url epxense_url(epxense, format: :json)

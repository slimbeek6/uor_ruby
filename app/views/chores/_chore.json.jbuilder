json.extract! chore, :id, :name, :assigned_to, :due_date, :completed, :created_at, :updated_at
json.url chore_url(chore, format: :json)

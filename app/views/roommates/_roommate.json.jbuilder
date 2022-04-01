json.extract! roommate, :id, :user_name, :email, :phone, :emergency_contact, :emergency_phone, :created_at, :updated_at
json.url roommate_url(roommate, format: :json)

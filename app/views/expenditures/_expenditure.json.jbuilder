json.extract! expenditure, :id, :expense_type, :amount, :period, :user_id, :created_at, :updated_at
json.url expenditure_url(expenditure, format: :json)
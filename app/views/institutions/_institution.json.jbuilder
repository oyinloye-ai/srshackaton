json.extract! institution, :id, :name, :start, :end, :loan, :amount, :user_id, :created_at, :updated_at
json.url institution_url(institution, format: :json)
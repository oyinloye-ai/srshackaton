json.extract! user, :id, :firstname, :lastname, :email, :country, :phonenumber, :dateofbirth, :photourl, :created_at, :updated_at
json.url user_url(user, format: :json)
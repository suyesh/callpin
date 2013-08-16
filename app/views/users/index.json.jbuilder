json.array!(@users) do |user|
  json.extract! user, :username, :email, :password, :password_confirmation, :fname, :lname, :address1, :address2, :city, :state, :zip, :phone, :wallet_id, :pin_id
  json.url user_url(user, format: :json)
end

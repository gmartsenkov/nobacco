json.array!(@checkouts) do |checkout|
  json.extract! checkout, :id, :cart_id, :name, :telephone, :adress, :city, :email, :delivery_type
  json.url checkout_url(checkout, format: :json)
end

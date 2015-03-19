json.array!(@in_carts) do |in_cart|
  json.extract! in_cart, :id, :cart_id, :product_id, :quantity, :color
  json.url in_cart_url(in_cart, format: :json)
end

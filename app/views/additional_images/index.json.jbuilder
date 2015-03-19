json.array!(@additional_images) do |additional_image|
  json.extract! additional_image, :id, :image, :product_id
  json.url additional_image_url(additional_image, format: :json)
end

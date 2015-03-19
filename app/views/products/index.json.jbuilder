json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :promotion, :category_id, :subcategory_id, :colors, :in_stock, :description, :image
  json.url product_url(product, format: :json)
end

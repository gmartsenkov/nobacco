FactoryGirl.define do
  factory :product do
    name   { 'E-liquid Bright' }
    image { 'photo.jpeg' }
    category_id { 1 }
    price  { 20 }
    promotion { 15}
    colors { 'R'}
    in_stock { 5 }
    description { 'Basic Description' }
  end
end
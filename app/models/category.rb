class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :bulgarian).to_s
  end

  has_many :sub_categories
  has_many :products
end

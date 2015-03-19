class SubCategory < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :bulgarian).to_s
  end

  belongs_to :category
  has_many :products , :foreign_key => "subcategory_id"
end

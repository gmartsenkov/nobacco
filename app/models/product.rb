class Product < ActiveRecord::Base
  validates :name, length: { minimum: 5 }
  validates :category_id , :in_stock ,:price , :description , presence: true
  validates :in_stock , numericality: { only_integer: true , greater_than: 0 }
 


  mount_uploader :image , ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :bulgarian).to_s
  end

  belongs_to :category
  belongs_to :sub_category , foreign_key: "subcategory_id"
  has_many :additional_image , :dependent => :destroy
  accepts_nested_attributes_for :additional_image

end

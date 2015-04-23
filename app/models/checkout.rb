class Checkout < ActiveRecord::Base
  has_one :cart  
  validates :cart_id , presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :city , :name , :adress , presence: true
  validates :telephone , length: { minimum: 10}
end

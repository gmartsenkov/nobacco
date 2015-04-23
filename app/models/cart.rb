class Cart < ActiveRecord::Base
  has_many :in_carts
  belongs_to :checkout
end

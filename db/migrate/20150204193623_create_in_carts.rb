class CreateInCarts < ActiveRecord::Migration
  def change
    create_table :in_carts do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :quantity , :default => 1
      t.string :color

      t.timestamps
    end
  end
end

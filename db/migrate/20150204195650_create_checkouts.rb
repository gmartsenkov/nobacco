class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :cart_id
      t.string :name
      t.string :telephone
      t.string :adress
      t.string :city
      t.string :email
      t.string :delivery_type

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price , :precision => 10 , :scale => 2
      t.decimal :promotion , :precision => 10 , :scale => 2
      t.integer :category_id
      t.integer :subcategory_id
      t.string :colors
      t.integer :in_stock , :default => 1
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

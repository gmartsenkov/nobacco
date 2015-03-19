class CreateAdditionalImages < ActiveRecord::Migration
  def change
    create_table :additional_images do |t|
      t.string :image
      t.integer :product_id

      t.timestamps
    end
  end
end

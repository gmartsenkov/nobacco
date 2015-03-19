class AddNicotineToProducts < ActiveRecord::Migration
  def change
    add_column :products, :nicotine, :string
  end
end

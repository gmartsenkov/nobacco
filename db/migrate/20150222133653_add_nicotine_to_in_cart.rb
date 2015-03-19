class AddNicotineToInCart < ActiveRecord::Migration
  def change
    add_column :in_carts, :nicotine, :string
  end
end

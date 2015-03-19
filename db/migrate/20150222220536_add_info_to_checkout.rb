class AddInfoToCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :info, :text
  end
end

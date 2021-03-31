class CreateErpCartsCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :erp_carts_cart_items do |t|
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end

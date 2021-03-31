class AddCartToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :erp_carts_cart_items, :cart, index: true, references: :erp_carts_carts
  end
end

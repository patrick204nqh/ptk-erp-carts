class AddProductToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :erp_carts_cart_items, :product, index: true, references: :erp_products_products
  end
end

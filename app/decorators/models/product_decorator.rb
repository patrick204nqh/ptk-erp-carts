Erp::Products::Product.class_eval do
  has_many :cart_items, class_name: "Erp::Carts::CartItem", foreign_key: "product_id"
  before_destroy :check_cart_items_referencing?

  private
    # ensure that there are no cart items referencing this product
    def check_cart_items_referencing?
      raise Exception, "cannot delete product that has already cart items referenced" if cart_items.any?
    end
end

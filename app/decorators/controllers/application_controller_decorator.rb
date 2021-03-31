Erp::ApplicationController.class_eval do
  include Erp::Frontend::Carts::Concerns::CurrentCart
  before_action :set_cart
end

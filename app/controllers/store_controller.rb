class StoreController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :prepare_products
  before_action :set_cart

  def index
    @products = Product.all
  end

  def prepare_products
    @products = Product.all
  end

end

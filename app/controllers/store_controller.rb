class StoreController < ApplicationController
  before_action :prepare_products
  def index
    prepare_products
  end

  def prepare_products
    @products = Product.all
  end
end

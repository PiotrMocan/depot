class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart
  def total_price
    product.price * quantity
  end
  def total_price_in_order(order)
    order.line_items.each do |line|
      x = line.product.price * line.quantity
    end
    x
  end
end

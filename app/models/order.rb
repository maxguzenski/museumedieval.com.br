class Order < ActiveRecord::Base
  has_many :order_items, :dependent => :delete_all
  belongs_to :client

  def total_weight
    order_items.to_a.sum {|i| i.size.weight * i.item_count }
  end

  def total_price
    (shipping || 0) + order_items.to_a.sum {|i| i.value }
  end

  def total_price_without_shipping
    order_items.to_a.sum {|i| i.value }
  end

end

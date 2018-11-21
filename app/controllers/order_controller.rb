class OrderController < ApplicationController

  def update_pagseguro
    @order = Order.find params[:Referencia]
    @order.shipping = params[:Frete]
    @order.value = @order.value + @order.shipping
  end

end

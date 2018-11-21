class Admin::OrdersController < ApplicationController

  layout 'admin'

  def index
    @orders = Order.find :all, :conditions => "client_id is not null", :order => 'updated_at desc'
  end

  def show
    @order = Order.find params[:id]
  end

  def destroy
    Order.destroy params[:id]
    redirect_to admin_orders_path
  end
end

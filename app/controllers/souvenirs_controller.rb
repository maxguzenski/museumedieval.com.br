class SouvenirsController < ApplicationController

  include ApplicationHelper

  def index
    @souvenirs = Souvenir.paginate :all, :order => 'position', :page => params[:page], :per_page => 15
  end

  def show
    @souvenir = Souvenir.find params[:id]
    @orderItem = OrderItem.new(:product => @souvenir)
  end
  
  def update_count
    @souvenir = Souvenir.find params[:id]
    render :update do |page|
      page[:souvenir_price].text(currency_for(@souvenir.sizes.first.value * params[:item_count].to_i))
      page[:souvenir_price].highlight
    end
  end

end

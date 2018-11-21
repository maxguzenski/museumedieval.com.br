class BrasoesController < ApplicationController

  helper :application

  
  def index
    @models = Model.paginate :all, :order => 'position', :page => params[:page], :per_page => 24
  end


  def find    
    unless params[:surname].empty?
      session[:last_surname] = params[:surname].titleize
      surname = session[:last_surname]
      
      FamilySearch.increase surname
      @family = Family.find_by_surname surname 
 
      render :update do |page|
        page[:modal_find].replace_html :partial => 'find'
        page << "openModal('modal_find', 400)"
      end
    else
      render :nothing
    end
  end

  
  def show    
    @model = Model.find params[:id]
    @orderItem = OrderItem.new(:product => @model, :surname => session[:last_surname])
  end

end

class ClientSearchesController < ApplicationController
  
  def index
  end
  
  def show
    @client_search = ClientSearch.find params[:id]
  end
  
  def new
    if params[:term]
      @client_search = ClientSearch.new
    else
      redirect_to client_searches_url
    end
  end
  
  def edit
    @client_search = ClientSearch.find params[:id]
    render :action => :new 
  end

  def create
    @client_search = ClientSearch.new params[:client_search]
    if @client_search.save
      redirect_to client_search_url(@client_search)
    else
      render :action => :new
    end
  end

  def update
    @client_search = ClientSearch.find params[:id]
    @client_search.update_attributes params[:client_search]    
    
    if @client_search.save
      redirect_to client_search_url(@client_search)
    else
      render :action => :new
    end
  end
  
end

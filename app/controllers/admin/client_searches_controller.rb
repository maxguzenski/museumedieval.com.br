class Admin::ClientSearchesController < ApplicationController
  layout 'admin'

  def index
    @approved = ClientSearch.find :all, :conditions => ['status = ?', "approved"], :order => 'created_at desc'
    @pendings = ClientSearch.find :all, :conditions => ['status = ?', "pending"], :order => 'created_at desc'
    @others = ClientSearch.find :all, :conditions => ['status not in (?) ', ["approved","pending"]], :order => 'created_at desc'
  end

  def edit
    @search = ClientSearch.find params[:id]
  end
  
  def update
    @client_search = ClientSearch.find(params[:id])

    if @client_search.update_attributes(params[:client_search])
      flash[:notice] = 'O cliente search foi atualizado.'
      redirect_to admin_client_searches_path
    else
      render :action => "edit"
    end
  end


  def destroy
    ClientSearch.destroy params[:id]
    redirect_to admin_client_searches_path
  end
end

class Admin::FamiliesController < ApplicationController

  layout "admin"

  PER_PAGE = 40

  def index
    @armorials = Armorial.find :all
    @families  = Family.paginate :all, :order => "name", :page => params[:page], :per_page => PER_PAGE
  end

  def search
    @armorials = Armorial.find :all
    @families = Family.paginate :all, 
                                :conditions => [ "armorial_id = ? and name like ?", params[:armorial_id], "%#{params[:name]}%"],
                                :order => "name", :page => params[:page], :per_page => PER_PAGE
    render :action => :index
  end

end

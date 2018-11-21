class Admin::FamilySearchesController < ApplicationController

  layout "admin"

  def index
    @family_searches = FamilySearch.paginate :all, :order => "search_count desc, name", :page => params[:page], :per_page => 40
    @total_surnames = FamilySearch.count
    @total_searches = FamilySearch.sum :search_count
  end
end

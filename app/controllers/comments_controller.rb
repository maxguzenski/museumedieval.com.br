class CommentsController < ApplicationController
  
  def index
    if params[:product]
      @comments = ProductComment.approved.paginate :all, :page => params[:page], :per_page => 10
    else
      @comments = Comment.approved.paginate :all, :page => params[:page], :per_page => 10
    end
  end
  
  
end

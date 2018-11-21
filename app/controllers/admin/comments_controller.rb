class Admin::CommentsController < ApplicationController

  layout 'admin'

  def index
    @comments = Comment.find :all, :order => 'created_at desc'
  end

  def show
    @comment = Comment.find params[:id]
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = 'O comentário foi atualizado.'
      redirect_to admin_comments_url
    else
      render :action => "edit"
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to(admin_comments_url)
  end


end

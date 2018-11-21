class MuseumCommentsController < ApplicationController
  
  def index
    redirect_to comments_url
  end

  def new
    @comment = MuseumComment.new :rate => 5
    render :update do |page|
      page["comment-modal"].replace_html :partial => 'form'
      page << "openModal('comment-modal', 600);"
    end
  end

  def create
    @comment = MuseumComment.new params[:museum_comment]

    if @comment.save
      ApplicationMailer.deliver_comment_email @comment
      render :update do |page|
        page << "$('#comment-modal').dialog('close');"
        page["comment-modal"].replace_html :partial => 'thanks'
        page << "openModal('comment-modal', 500);"
      end
    else
      render :update do |page|
        page["comment-error"].text t(:'error.empty')
        page["comment-error"].highlight
      end
    end
  end

end

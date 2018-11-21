class ProductCommentsController < ApplicationController

  def new
    @comment = ProductComment.new :rate => 4
    @comment.product = Product.find params[:id]
    
    render :update do |page|
      page["product-comment-modal"].replace_html :partial => 'form'
      page << "openModal('product-comment-modal', 600);"
    end
  end
  
  def create
    @comment = ProductComment.new params[:product_comment]

    if @comment.save
      ApplicationMailer.deliver_comment_email @comment
      render :update do |page|
        page << "$('#product-comment-modal').dialog('close');"
        page["product-comment-modal"].replace_html :partial => 'museum_comments/thanks'
        page << "openModal('product-comment-modal', 500);"
      end
    else
      render :update do |page|
        page["comment-error"].text t(:'error.empty')
        page["comment-error"].highlight
      end
    end
  end


end

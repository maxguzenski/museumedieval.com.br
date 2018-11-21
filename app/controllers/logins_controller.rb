class LoginsController < ApplicationController
  
  include ProductCommentsHelper
  
  def new
    session[:path] = params[:path]
    render :update do |page|
      page["login-modal"].replace_html :partial => 'form'
      page << "openModal('login-modal', 340);$('#email').focus()"
    end
  end

  def validate_client
    error_msg = nil

    if params[:email].empty? || params[:zip_base].empty? || params[:zip_digit].empty?
      error_msg = t(:'error.empty')
    elsif !User.find_by_email(params[:email]).nil?
      error_msg = t(:'error.email_not_unique')
    end

    if error_msg.nil?
      render :update do |page|
        page.redirect_to :controller => :clients, :action => :new,
                         :email => params[:email], :zip_code => "#{params[:zip_base]}-#{params[:zip_digit]}"
      end
    else
      render :update do |page|
        page["client-error"].text error_msg
        page["client-error"].highlight
      end
    end
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user.nil?
      render :update do |page|
        page["login-error"].text t(:'error.invalid_login')
        page["login-error"].highlight
        page << "$('#email').focus()"
      end
    else
      session[:user_id] = @user.id
      render :update do |page|
        #page.redirect_to :controller => :cart, :action => :checkout
        page.redirect_to session[:path]
      end
    end
  end
  
  def login_from_token
    user = User.authenticate_from_token params[:token]
    prod = Product.find params[:id]
    
    unless user.nil? || prod.nil?
      session[:user_id] = user.id
      return redirect_to comment_url_for(brasao_path(prod)) if prod.class == Model
      return redirect_to comment_url_for(souvenir_path(prod)) if prod.class == Souvenir
    end
    redirect_to home_url
  end

  def destroy
    session[:user_id] = nil
    session[:order_id] = nil
    redirect_to home_path
  end

end

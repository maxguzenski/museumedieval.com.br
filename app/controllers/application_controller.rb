# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include ExceptionNotification::Notifiable
  
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => '44808cd9908cd9705bdbfff637fd2ae6'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password
  
  before_filter :authenticate, :set_locale
  
  def authenticate
    if self.class.to_s =~ /\AAdmin::/i
      authenticate_or_request_with_http_basic do |username, password|
        username == "museu" && password == "m&diev@l"
      end
    end
  end
  
  def set_locale
    parse_locale = request.host.split('.').last
    locale = params[:locale].to_sym unless params[:locale].nil?
    uri = request.env['REQUEST_URI'].gsub(/[?&]locale=#{locale}/, "")
    
    if parse_locale == 'com'
      I18n.locale = :en 
    else
      redirect_to "#{APP_DOMAIN_CONFIG[locale]}#{uri}" if locale == :'en'
      I18n.locale = I18n.default_locale
    end    
    #locale = params[:locale].to_sym unless params[:locale].nil?
    #locale = I18n.available_locales.include?(locale) ? locale : nil
    #I18n.locale = locale || I18n.default_locale
  end

end

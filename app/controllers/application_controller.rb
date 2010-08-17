# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
 # protect_from_forgery # See ActionController::RequestForgeryProtection for details

rescue_from ActionController::RoutingError, :with => :page_not_found 
  
  private 
  def page_not_found 
#    render :file => "#{RAILS_ROOT}/public/404.html", :status => 404 
redirect :controller => "form_contacts_controller", :action => "new"
  end 



  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def logged_only
    unless logged_in?
      session[:last_url] = request.url
      redirect_to url_for(:controller=>"session",:action=>"login")
    end
  end
  
  def logged_in?
    session[:current_user]
  end
  
end

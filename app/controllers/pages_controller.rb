class PagesController < ApplicationController
 
before_filter :logged_only
 
  def home
    
    @issues = Issue.all
    
    session[:user] = User.find(1)

  end

  def about_us
    render "contact" if params[:page]
  end

  def contact
  end

  def features
  end

end

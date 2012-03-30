class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def confirm_logged_in
    unless session[:username]
      flash[:notice] = "Please log in."
      redirect_to(:controller => 'home', :action => 'login')
      return false
    else
      return true
    end
  end
end

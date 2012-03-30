class HomeController < ApplicationController
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
  end

  def login
  end

  # def attempt_login
    # authorized_user = Adauth.authenticate(params[:username], params[:password])
    # if authorized_user
      # session[:username] = authorized_user.login.strip.gsub(/[^0-9a-z ]/i, '')
      # session[:admin] = authorized_user.member_of?("LFMSAdmins") ? "yes" : "no"
      # flash[:notice] = "You are now logged in."
      # redirect_to(:action => 'index')
    # else
      # flash[:notice] = "Invalid username or password."
      # redirect_to(:action => 'login')
    # end
  # end

  def attempt_login
    session[:username] = params[:username]
    if params[:username] == 'jett'
      session[:admin] = "yes"
    else
      session[:admin] = "no"
    end
    flash[:notice] = "You are now logged in."
    redirect_to(:action => 'index')
  end

  def logout
    session[:username] = nil
    session[:admin] = nil
    flash[:notice] = "You have been logged out."
    redirect_to(:action => "login")
  end
end

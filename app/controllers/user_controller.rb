class UserController < ApplicationController
  def login
  end
  
  def admin_login
    session[:login] = 1
    session[:cart] = nil
    session[:notice] = 'Admin Login Successful'
    redirect_to :controller => :items
  end
  
  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = 'You have successfully logged out'
    redirect_to :controller => :items
  end
end

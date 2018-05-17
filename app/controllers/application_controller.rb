class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  
  def confirm_logged_in
    unless session[:current_user_email]
        flash[:warning] = "Please log in first."
        redirect_to :root
        return false
    else
        return true
    end
  end
end

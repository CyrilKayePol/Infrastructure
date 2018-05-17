class LoginController < ApplicationController
	before_filter :confirm_logged_in, :only => [:logout]
	attr_accessor :user, :dash
	
	def login
	
	end
	
	def log_user
		@emailadd = params[:emailadd]
		@passwd = params[:passwd]
		
		@user = User.where("email = ? AND password = ?", @emailadd, @passwd)
		
		if @user.empty?
			flash[:warning] = "Incorrect Email address or Password. Try Again."
			redirect_to action: "login"
		else
			flash[:notice] = "Log in successful."
			session[:current_user_email] = @emailadd
			session[:current_user_password] = @passwd
			redirect_to controller: "account", action: "profile_information"
		end
	end
	
	def logout
		reset_session
		redirect_to '/'
	end

end

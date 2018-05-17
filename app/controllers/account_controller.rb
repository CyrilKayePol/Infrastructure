class AccountController < ApplicationController
	before_filter :confirm_logged_in, :only => [:account_settings, :profile_information]
	
	
	def profile_information
		@current_user = User.find_by(email: session[:current_user_email])
		@passwd = @current_user.password
		@email = session[:current_user_email]
		@first_name = @current_user.first_name
		@last_name = @current_user.last_name	
		@mobile_number = @current_user.mobile_number
		@birthday = @current_user.birthday
		@gender = @current_user.gender
		@religion = @current_user.religion
		@passwd = @current_user.password
		@email = session[:current_user_email]
		if (!@birthday.nil?)
			@month = @current_user.birthday.strftime("%B")
			@day = @current_user.birthday.strftime("%d")
			@year = @current_user.birthday.strftime("%Y")
		end
	end
	
	def account_settings
		@current_user = User.find_by(email: session[:current_user_email])
		@passwd = @current_user.password
		@email = session[:current_user_email]
		@first_name = @current_user.first_name
		@last_name = @current_user.last_name	
		@mobile_number = @current_user.mobile_number
	end

	def create_account
		@firstname
		@lastname
		@email
		@passwd
		@mobilenum 
		@birthday 
		@religion 
		@gender 
	end
	
	def redirect_account
	@firstname = params[:firstname]
		@lastname = params[:lastname]
		@email = params[:email]
		@passwd = params[:passwd]
		@mobilenum = params[:mobilenum]
		@birthday = params[:birthday]
		@religion = params[:religion]
		@gender = params[:gender]
		
		@user = User.create!(:email => @email, :password => @passwd, :first_name => @firstname, :last_name => @lastname,
		:mobile_number => @mobilenum, :birthday => @birthday, :religion => @religion, :gender => @gender)	
		
		redirect_to controller: "login", action: "log_user"
	end
	
	def edit_account_settings
		@passwd = session[:current_user_password]
		@email = session[:current_user_email]
		@current_user = User.find_by(email: session[:current_user_email])
		@first_name = @current_user.first_name
		@last_name = @current_user.last_name
		@mobile_number = @current_user.mobile_number
	end
	
	def edit_profile_information
		@passwd = session[:current_user_password]
		@email = session[:current_user_email]
		@current_user = User.find_by(email: session[:current_user_email])
		@first_name = @current_user.first_name
		@last_name = @current_user.last_name
		@mobile_number = @current_user.mobile_number
		@birthday = @current_user.birthday
		@gender = @current_user.gender
		@religion = @current_user.religion	
		if (!@birthday.nil?)
			@month = @current_user.birthday.strftime("%B")
			@day = @current_user.birthday.strftime("%d")
			@year = @current_user.birthday.strftime("%Y")
		end	
	end
	
	def update_account_settings
		@current_user = User.find_by(email: session[:current_user_email])
		@current_user.update(password: params[:passwd])
		
		redirect_to "/account_settings"
	end

	def update_profile_information
		@current_user = User.find_by(email: session[:current_user_email])
		@current_user.update(first_name: params[:first_name], last_name: params[:last_name], mobile_number: params[:mobile_number],
		birthday: params[:birthday], religion: params[:religion], gender: params[:gender])
		
		redirect_to "/profile_information"
	end
	
end

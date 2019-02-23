class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	
	include SessionsHelper
	
	private
	
	def require_user_logged_in
		unless logged_in?
			p 'login_url = ', login_url
			redirect_to login_url
		end
	end
	
	def counts(user)
		@count_microposts = user.microposts.count
		p '@count_microposts = ', @count_microposts
	end
end

module SessionsHelper
	#logs in the given user
	def login(user)
		session[:user_id] = user.id
	end

	def logout
		session.delete(:user_id)
		@current_user = nil
	end

	def current_user
		@current_user ||= User.find_by(:id => session[:user_id])
	end

	#checks is logged in using current_user method
	def logged_in?
		!current_user.nil?
	end
end

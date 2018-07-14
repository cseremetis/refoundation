class SessionsController < ApplicationController
  #app/helpers/sessions_helper.rb
	include SessionsHelper
	
	def new
    pull
	end	  

  def create
		@user = User.find_by(email: params[:session][:email])
  	if @user && @user.authenticate(params[:session][:password])
  		login(@user)
      pull
  		render 'new'
  	else
      flash[:notice] = "incorrect email/password"
			render 'new'
  	end
  end

	def destroy
    logout

    redirect_to '/login'
	end

  private

    #pull arrays of captions out for each section
    def pull
      @grants = Caption.where(:section => 2)
      @cover = Caption.where(:section => 1)
      @donate = Caption.where(:section => 4)
      @leadership = Caption.where(:section => 3)
      @news = Caption.where(:section => 5)
      #this helps the "my profile" link in the adminMenu access the logged in user
      @user = current_user
    end

end
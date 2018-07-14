class WelcomeController < ApplicationController
  def index
  	@cover = Caption.where(:section => 1)
  	@grants = Caption.where(:section => 2)
  	@leadership = Caption.where(:section => 3)
  	@donate = Caption.where(:section => 4)
  end
end

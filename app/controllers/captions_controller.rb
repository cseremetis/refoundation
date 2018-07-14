class CaptionsController < ApplicationController

	include SessionsHelper

	def new
		current_user
	end

	def create
		current_user
		@caption = Caption.new(caption_params)

		if @caption.save
			redirect_to '/login'
		else
			render 'new'
		end
	end

	def edit
		current_user
		@edit_caption = Caption.find(params[:id])
	end

	def update
		@update_caption = Caption.find(params[:id])
		
		if @update_caption.update(caption_params)
			redirect_to '/login'
		else
			#gives error message
			redirect_to '/login'
		end
	end

	def destroy
		@delete_caption = Caption.find(params[:id])

		if @delete_caption
			@delete_caption.destroy
		end

		redirect_to '/login'
	end

	private

		def caption_params
			params.require(:caption).permit(:title, :content, :section)
		end
end

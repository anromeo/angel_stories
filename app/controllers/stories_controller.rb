class StoriesController < ApplicationController
	def index
		@stories = Story.all.reverse
	end

	def new
		@story = Story.new
		render :layout => false
	end

	def create
		@story = Story.new(params[:story])

		if @story.save
			flash[:notice] = "Thank you for the story!"
			redirect_to root_path
		else
			flash[:notice] = "Please, enter a story."
			render :action => "new"
		end
	end
end

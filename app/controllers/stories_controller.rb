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

		respond_to do |format|
			if @story.save
				format.html { redirect_to root_path, notice: "Thank you for the story!" }
				format.js
			else
				flash[:notice] = "Please, enter a story."
				render :action => "new"
			end
		end
	end
end

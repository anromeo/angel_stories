class PointsController < ApplicationController
	layout false
	before_filter :find_story

	def new
		ip = request.remote_ip
		foundpoint = @story.points.where("ip=?", ip)

		unless foundpoint.present?
			@point = @story.points.build(ip: "#{ip}")
			@point.save!
		end
		@points = @story.points.count
	end

	private
	def find_story
		@story = Story.find(params[:story_id])
	end
end

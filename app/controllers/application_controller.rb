class ApplicationController < ActionController::Base

	before_action :categories, :tag

	def categories
		@categories = Category.all
	end

	def tag 
		@tag = Tag.all
	end
end

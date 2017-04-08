class HomeController < ApplicationController

	def index

	end

	def profile
		@user = "replace with user info"
		render "home/profile"
	end

end
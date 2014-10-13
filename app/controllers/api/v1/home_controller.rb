class Api::V1::HomeController < ApplicationController
	#allow_cors :index
	before_action :authenticate_user!

	def index
		render :json => User.first
    end
end

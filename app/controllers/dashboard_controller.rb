class DashboardController < ApplicationController
 # before_action :authenticate_user!

	def index
		if params[:user]
			@user = User.find_by_id(params[:id])
			@traveller = Traveller.all
		end
	end
	
end

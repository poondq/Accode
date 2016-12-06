class DashboardController < ApplicationController
 # before_action :authenticate_user!

	def index
		@user = User.all
			@travellers = Traveller.all
		
	end

	
end

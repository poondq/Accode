class MerchantsController < ApplicationController
	def index
		  	render json: User.all.to_json
		  	# render json: User.all.to_json
	
  end
end

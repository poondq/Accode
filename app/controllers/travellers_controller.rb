class TravellersController < ApplicationController
  def index
		  	render json: Traveller.all.to_json
		  	# render json: User.all.to_json
	
  end

end

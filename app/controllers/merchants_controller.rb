class MerchantsController < ApplicationController
	def index
		# params[:lat]
		 # params[:request_zone]
		# params[:request_amount]

		if params[:request_amount].present?
			 @user = User.where("merchant_amount > ?", params[:request_amount])
			 @user = User.select("merchant_amount > ?", params[:request_amount])

		else
			@user = User.all
		end


		  	render json: @user.to_json
		end

	 def show
	 	render json: User.find(params[:id])
	 end
end

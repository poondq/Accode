class MerchantsController < ApplicationController
	def index

		if params[:request_amount].present? || params[:request_zone].present?
			 @user = User.where("merchant_amount > ?", params[:request_amount]) && User.where("merchant_zone = ?", params[:request_zone])
			else
			@user = User.all
		end		

		  	render json: @user.to_json
		end

	 def show
	 		 render json: @user.to_json

	 	  	render json: User.find(params[:id])
	 end

end

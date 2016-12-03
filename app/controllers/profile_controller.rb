class ProfileController < ApplicationController
 before_action :authenticate_user!

	def index
		@user = User.all

 		@edit = current_user
	end

	def update
 @edit = current_user
 @edit.update(stupid_param)
 redirect_to :action => :index, :id => @edit
 	end

private
 	def stupid_param
 params.require(:user).permit( :merchant_avatar, :merchant_id, :merchant_address, :merchant_amount, :merchant_status)
 end

end

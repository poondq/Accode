class MerchantsController < ApplicationController
	def index

		if params[:request_amount].present? || params[:request_zone].present?
			 @users = User.where("merchant_amount > ?", params[:request_amount]) && User.where("merchant_zone = ?", params[:request_zone])
				@amount = @users.map do |user|
					Hash['id', user.id, 'amount', user.transactions.where(status: 'pending').sum(&:amount), 'user_amount', user.merchant_amount]
				end
				@updated_amount = @amount.map do |user|
					Hash['id', user['id'], 'amount', user['amount'] + params[:request_amount], 'user_amount', user['user_amount']]
				end
				@eligible_users = @updated_amount.map do |hash|
					User.find(hash['id']) if hash['amount'] >= hash['user_amount']
				end.compact
		else
			@user = User.all
			# :notice "youre fucked."
		end		

		  	render json: @user.to_json
		end

	 def show
	 		 render json: @user.to_json

	 	  	render json: User.find(params[:id])
	 end

end


# current_user.amount = transacotion.status ("pending").&:amount.sum 

# if < ?, param[:request_amount] show. 

# 	@users = User.where("merchant_amount > ?", params[:request_amount]) && User.where("merchant_zone = ?", params[:request_zone])
# 	@amount = @users.map do |user|
# 		Hash['id', user.id, 'amount', user.transactions.where(status: 'pending').sum(&:amount), 'user_amount', user.merchant_amount]
# 	end
# 	@updated_amount = @amount.map do |user|
# 		Hash['id', user['id'], 'amount', user['amount'] + params[:request_amount], 'user_amount', user['user_amount']]
# 	end
# 	@eligible_users = @updated_amount.map do |hash|
# 		User.find(hash['id']) if hash['amount'] >= hash['user_amount']
# 	end.compact




# 	@merchants = Transaction.where(status: 'pending').map(&:user)

# 	@user = User.where(transaction.status = "pending") 
# 	# @user.sum(&:amount) = current_user.where("merchant_amount > ?", params[:request_amount]) 

# else 

# 	:notice "fuckkkkkk"

# else 
# 	no show



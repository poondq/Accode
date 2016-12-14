class CompleteapiController < ApplicationController
  def index
  	if params[:check_status].present? && params[:transref].present?
  		transaction = Transaction.find_by(reference: params[:transref]).status

  				  	render json: @user.to_json
							end	
  	else 
  		notice: "failure"
  	
  	end
  end


  # if params[:request_amount].present? || params[:request_zone].present?
		# 	 @user = User.where("merchant_amount > ?", params[:request_amount]) && User.where("merchant_zone = ?", params[:request_zone])
		# 	else
		# 	@user = User.all
		# end		

		#   	render json: @user.to_json
		# end

   # transaction =  Transactions.create(
   #                travellers.firstname: params[:firstname],
   #                travellers.lastname: params[:lastname],
   #                travellers.email: params[:email],
   #                travellers.number: params[:number],
   #                travellers.photo: params[:photo]
   #                amount: params[:amount]
   #                selectedmerchant: params[:selectedmarchant]
	# 								)

		# @traveller = Traveller.new(
		# 									firstname: params[:firstname],
		#                   lastname: params[:lastname],
		#                   email: params[:email],
		#                   number: params[:number],
		#                   photo: params[:photo]
		#                   )
		
		# @transaction = @traveller.transactions.build(
		# 									amount: params[:amount],
		# 	                selectedmerchant: params[:selectedmerchant],
		# 	                user: User.find(params[:merchant_id]),
		# 	                status: "pending"
		# 								)
		# @traveller.save
		# # puts @traveller.errors.full_messages

 	# if @traveller.valid?
  #     render json: {transref: @transaction.reference, status: @transaction.status = "pending"}
  #   else
  #     render json: { errors: transaction.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end
end

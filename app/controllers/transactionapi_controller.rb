class TransactionapiController < ApplicationController
  
  def index
		render json: Transaction.all
  end

  def create
   # transaction =  Transactions.create(
   #                travellers.firstname: params[:firstname],
   #                travellers.lastname: params[:lastname],
   #                travellers.email: params[:email],
   #                travellers.number: params[:number],
   #                travellers.photo: params[:photo]
   #                amount: params[:amount]
   #                selectedmerchant: params[:selectedmarchant]
	# 								)
		@traveller = Traveller.new(
											firstname: params[:firstname]  ,
		                  lastname: params[:lastname] ,
		                  email: params[:email] ,
		                  number: params[:number] ,
		                  photo: params[:photo]
		                  )
		
		@transaction = @traveller.transactions.build(
											amount: params[:amount]  ,
			                # selectedmerchant: params[:selectedmerchant]  ,
			                user: User.find(params[:merchant_id])  ,
			                status: "pending"  ,
                      fee: params[:amount].to_i / 10 * 0.50  ,
                      total4trans: params[:amount].to_i / 10 * 0.5 + params[:amount].to_i ,
                      token: params[:token] ,
                      fullamount: params[:fullamount]
                  	)
		@traveller.save
		# puts @traveller.errors.full_messages

 	if @traveller.valid?
      render json: {transref: @transaction.reference, status: @transaction.status = "pending"}
    else
      render json: { errors: transaction.errors.full_messages }, status: :unprocessible_entity
    end

#    @transaction = Transaction.new(
#    								amount: params[:amount],
#                   selectedmerchant: params[:selectedmarchant]
#                   )
# @traveller = @transaction.travellers.build(
# 									firstname: params[:firstname],
#                   lastname: params[:lastname],
#                   email: params[:email],
#                   number: params[:number],
#                   photo: params[:photo]
#                   )
# @transaction.save



    # if @traveller.valid?
    #   render json: Transaction.all
    # else
    #   render json: { errors: @traveller.errors.full_messages }, status: :unprocessible_entity
    # end
  end
end

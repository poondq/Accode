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

                    @step0 = params[:amount].to_f * 1.09000.to_f  
                    @step1 = @step0.to_f * 0.03400.to_f 
                    @step2 = @step1.to_f + 0.50000.to_f 
                    @step3 = @step0.to_f - @step2.to_f - params[:amount].to_f  
                    @step4 = @step3.to_f * 0.90000.to_f
                    @sum = @step4.to_f


		@transaction = @traveller.transactions.build(
											amount: params[:amount]  ,
                      user: User.find(params[:merchant_id])  ,
			                status: "pending"  ,
                      fee: @sum.to_f ,
                      total4trans: params[:amount].to_f + @sum.to_f #,
                      # token: params[:token] ,                     
                      # selectedmerchant: params[:selectedmerchant]  ,
                      # fullamount: params[:fullamount]
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

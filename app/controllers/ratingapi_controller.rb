class RatingapiController < ApplicationController
  
  def index
		render json: Transaction.all
  end

  def create

  	@transaction = Transaction.all


   		if params[:rating].present? || params[:transref].present?
   				
   				@transactions = Transaction.where("reference = ?", params[:transref]) 
   				# @transactions.where("reference = ?", params[:transref])
					@rating = @transactions.update( 
					rating: params[:rating] 
					)					

					@givenrate = @rating
			end

			 # if @transactions.valid? 
			 # 	render json: {status: @transaction.status = "completed"}

			 # end
			# else
			# 	render json: {status: @transaction.status = "completed" }

			# end
 	 		# if @rating.valid?
     #   render json: {rating: @transaction.rating, status: @transaction.status = "pending"}
     # 	else
     #   render json: { errors: transaction.errors.full_messages }, status: :unprocessible_entity
     # 	end

		end

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
  

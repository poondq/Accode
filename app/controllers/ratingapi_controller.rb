class RatingapiController < ApplicationController
  
  def index
		render json: Transaction.all
  end

  def create

   		if params[:rating].present? || params[:transref].present?
   				@transaction = Transaction.all
   				@transactions = @transaction.where("reference = ?", params[:transref]) 
					@rating = @transactions.update( 
					rating: params[:rating] 
					)					

          #rating formula
            rating0 = Transaction.all.where("user_id = ?", params[:merchant_id])
            rating1 = rating0.sum(:rating).to_f
            @ratingavg = rating1.to_f / rating0.count


        @merchant_update = User.find(params[:merchant_id]).update(
       merchant_rating: @ratingavg.to_f
          )


      

			render json: {rating: @ratingavg }
    	else
      render json: { errors: @transaction.errors.full_messages }, status: :unprocessible_entity
			end
		
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
  

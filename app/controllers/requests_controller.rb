class RequestsController < ApplicationController

  # require "stripe"  
  # Stripe.api_key = ENV['STRIPE_API_KEY']

  def index

  	  @transactions = Transaction.select{ |transaction| transaction.status == "pending" && transaction.user_id == current_user.id}

  end

  def complete
   	@transaction = Transaction.find(params[:id])
   	if @transaction.update(status: 'completed')
      @deduct_amount = current_user.merchant_amount - @transaction.amount
      current_user.merchant_amount = @deduct_amount
      # begin
      #   charge = Stripe::Charge.create(
      #     :amount => @transaction.fullamount * 100 , # Amount in cents @transaction.amount
      #     :currency => "sgd",
      #     :source => @transaction.token , #"tok_19S1ALLw2llPMhL22D89doIt"
      #     :description => "Example charge"
      #   )
      # rescue Stripe::CardError => e
      #   # The card has been declined
      # end

      
      current_user.save
      
      # TransactionRecord.create(@deduct_amount, current_user, )
   		redirect_to requests_path
   	else
   		flash[:notice] = 'Something'
   	end
  end

  def cancel
   	@transaction = Transaction.find(params[:id]) 
 		if @transaction.update(status: 'cancelled')
   		redirect_to requests_path
   	else
   		flash[:notice] = 'Something'
   	end
  end
end


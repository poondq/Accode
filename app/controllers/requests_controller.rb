class RequestsController < ApplicationController
  def index
  	@traveller = Traveller.all
  	@request = Transaction.where(status: "pending")

  	  @transactions = Transaction.select{ |transaction| transaction.user_id == current_user.id}

  end

  # def edit

  # 	@complete = Transaction.find(params[:id])

  # end

end

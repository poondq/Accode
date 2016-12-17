class TransactionController < ApplicationController
  before_action :authenticate_user!

  respond_to :js, only: [:edit]

	def index
 		@completed = (Transaction.all.select{ |t| t.status == "completed"}) + (Transaction.all.select{ |t| t.status == "cancelled"})
 		@completedtransaction = @completed.select{ |transaction| transaction.user_id == current_user.id}

		@traveller = Traveller.all
		@user = User.all

	end

	def edit
  	@transactions = Transaction.find(params[:id])
  end

end

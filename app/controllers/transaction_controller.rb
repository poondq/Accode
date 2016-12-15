class TransactionController < ApplicationController
  before_action :authenticate_user!

  respond_to :js, only: [:edit]

	def index
		 		@completed = Transaction.where(status: "completed")
		@traveller = Traveller.all
		@user = User.all
	end

	def edit
  	@transactions = Transaction.find(params[:id])
  end

end

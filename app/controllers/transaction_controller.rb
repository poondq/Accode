class TransactionController < ApplicationController
  before_action :authenticate_user!

	def index
		 		@completed = Transaction.where(status: "completed")
		@traveller = Traveller.all
		@user = User.all
	end
end

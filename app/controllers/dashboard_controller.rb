class DashboardController < ApplicationController
 before_action :authenticate_user!

	def index
			
		@user = User.all
			@travellers = Traveller.all
   
  @transactions = Transaction.select{ |transaction| transaction.created_at.to_date == Date.today}
	end
end
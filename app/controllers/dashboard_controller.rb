class DashboardController < ApplicationController
 before_action :authenticate_user!

	def index
			
		@user = User.all
			@travellers = Traveller.all
 
 #transaction completed sum
  @transactions = Transaction.select{ |transaction| transaction.created_at.to_date == Date.today && transaction.status == "pending" && transaction.user_id == current_user.id } 
  @completedsum = @transactions.sum(&:amount)

#transaction pending sum
  @pending = Transaction.select{ |transaction| transaction.status == "pending" && transaction.user_id == current_user.id }

  @pendingsum = @pending.sum(&:amount)

  #transaction order 

  @todaycomplete = Transaction.select{ |transaction| transaction.created_at.to_date == Date.today && transaction.status == "completed" && transaction.user_id == current_user.id }.count


	

	end
end
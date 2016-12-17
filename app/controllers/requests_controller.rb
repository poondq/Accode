class RequestsController < ApplicationController
  def index

  	  @transactions = Transaction.select{ |transaction| transaction.user_id == current_user.id}

  end

  def complete
   	@transaction = Transaction.find(params[:id])
   	if @transaction.update(status: 'completed')
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

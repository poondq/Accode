class CashbalanceController < ApplicationController
  
  def index
		@user = User.all
			@travellers = Traveller.all
		
	end
end

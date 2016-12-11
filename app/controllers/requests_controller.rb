class RequestsController < ApplicationController
  def index
  	@traveller = Traveller.all
  	@request = Transaction.where(status: "pending")

  end
end

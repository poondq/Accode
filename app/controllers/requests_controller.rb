class RequestsController < ApplicationController
  def index
  	@traveller = Traveller.all
  end
end

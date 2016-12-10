class TransactionController < ApplicationController
  before_action :authenticate_user!

	def index
		@traveller = Traveller.all
		@user = User.all
	end
end

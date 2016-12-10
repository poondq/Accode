class TravellersController < ApplicationController
  
  def index
		render json: Traveller.all
  end

  def create
   traveller =  Traveller.create(
                  firstname: params[:firstname],
                  lastname: params[:lastname],
                  email: params[:email],
                  number: params[:number]
                )

    if traveller.valid?
      render json: traveller
    else
      render json: { errors: traveller.errors.full_messages }, status: :unprocessible_entity
    end
  end

end

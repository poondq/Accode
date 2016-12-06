class ApiV1::EventsController < ApiController

	render :json => { :message => "Error message" }, :status => 500
end
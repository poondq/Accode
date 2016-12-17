class PopupController < ApplicationController

	def index
	end
	def topuppartial
  	respond_to do |format|
    format.html
    format.js
  	end
	end
end

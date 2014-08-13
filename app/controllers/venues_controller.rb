class VenuesController < ApplicationController

	def index
		if params[:search].present?
			@venues = Venue.near(params[:search], 2)

		else
			@venues = Venue.all
		end
		
	end

	def new
		@venue = Venue.new
	end

	def create
		@venue = Venue.new(venue_params)
		@venue.save
		redirect_to root_path
	end

	private
	def venue_params
		params.require(:venue).permit(:title, :address, :longitude, :latitude)
	end

end

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
			if @venue.save
			flash[:success] = "Thank you for submiting your Venue!"
			redirect_to root_path
		else
			flash[:error] = "not this time buddy, change it!"
			render :new
		end	
		
	end

	private
	def venue_params
		params.require(:venue).permit(:title, :address, :longitude, :latitude)
	end

end

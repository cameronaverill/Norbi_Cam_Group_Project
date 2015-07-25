class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def create
		@event = Event.new(event_params)
	end

	def new

	end

	def edit
	end

	def show
		@event = Event.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private
	def event_params 
		event_params = params.require(:event).permit(:name, :date, :rating, :likes)
	end
end
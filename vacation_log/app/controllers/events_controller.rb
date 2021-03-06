class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to event_path(@event)
		else
			render :new
		end
	end

	def new
		@event = Event.new
		@contributions = @event.contributions
	end

	def edit
		@event = Event.find(params[:id])
	end

	def show
		@event = Event.find(params[:id])
		@contributions = @event.contributions
	end

	def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
			redirect_to @event
		else
			render 'edit'
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy

		redirect_to events_path
	end

	def like
		@event = Event.find(params[:id])

		@event.likes += 1
		@event.save
		redirect_to events_path
	end

	private
	def event_params 
		event_params = params.require(:event).permit(:name, :date, :rating, :likes)
	end
end
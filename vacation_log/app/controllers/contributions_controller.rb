class ContributionsController < ApplicationController
	def create
		@event = Event.find(params[:event_id])
		@contribution = @event.contributions.create(contribution_params)
		redirect_to event_path(@event)
	end

	def destroy
		@event = Event.find(params[:event_id])
    	@contribution = @event.contributions.find(params[:id])
    	@contribution.destroy
    	redirect_to event_path(@event)
	end

	def edit
		@event = Event.find(params[:event_id])
		@contribution = @event.contributions.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@contribution = @event.contributions.find(params[:id])
		if @contribution.update(contribution_params)
			redirect_to @event
		else
			render 'edit'
		end
	end

	def show
		@event = Event.find(params[:event_id])
		@contributions = @event.contributions.find(params[:id])
	end

	private
	def contribution_params
		params.require(:contribution).permit(:text, :contributor, :photo)
	end
end
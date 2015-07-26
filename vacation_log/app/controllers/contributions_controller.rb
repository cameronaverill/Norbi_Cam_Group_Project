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

	private
	def contribution_params
		params.require(:contribution).permit(:text, :contributor, :avatar)
	end
end
class EventsUsersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    current_user.attended_events << @event
    redirect_to current_user
  end

  def destroy
    current_user.attended_events.delete(params[:event_id])
    redirect_to event_path(params[:event_id])
  end
end

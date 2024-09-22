class EventsUsersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    current_user.attended_events << @event
    redirect_to current_user
  end
end

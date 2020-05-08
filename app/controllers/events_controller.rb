class EventsController < ApplicationController
  include EventsHelper

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      flash[:notice] = 'Event created successfuly'
      redirect_to @event
    else
      render :new
    end
  end
end

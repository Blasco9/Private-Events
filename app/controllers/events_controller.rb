class EventsController < ApplicationController
  include EventsHelper
  before_action :authenticate_user, only: [:new, :create]

  def index
    @past_events = Event.past
    @upcoming_events = Event.upcoming
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

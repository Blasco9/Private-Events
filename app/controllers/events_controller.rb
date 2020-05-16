class EventsController < ApplicationController
  before_action :authenticate_user, only: %i[new create]

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
      redirect_to @event, notice: 'Event created successfuly'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end
end

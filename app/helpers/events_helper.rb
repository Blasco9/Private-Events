module EventsHelper
  def event_params
    params.require(:event).permit(:name, :date, :description)
  end

  def past
    today = Time.now.strftime('%Y-%m-%d')
    Event.where('date < ?', today)
  end

  def upcoming
    today = Time.now.strftime('%Y-%m-%d')
    Event.where('date >= ?', today)
  end
end

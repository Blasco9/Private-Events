class EventAttendancesController < ApplicationController
  def create
    @event_attendance = EventAttendance.new(event_attendance_params)
    puts params
    if @event_attendance.valid?
      puts '------------------------------Success---------------------------------'
    else
      puts '------------------------------Failure---------------------------------'
    end
  end

  private

  def event_attendance_params
    params.require(:event_attendance).permit(:event_id, :attendee_id)
  end
end

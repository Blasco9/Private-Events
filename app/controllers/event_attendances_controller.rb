class EventAttendancesController < ApplicationController
  def create
    @event_attendance = EventAttendance.where('event_id = ? AND attendee_id = ?', *attendance_params.values)

    if @event_attendance.exists?
      redirect_to user_path(current_user), notice: 'User already invited'
    else
      EventAttendance.create(attendance_params)
      redirect_to user_path(current_user), notice: 'New attendee invited'
    end
  end

  private

  def attendance_params
    params.require(:event_attendance).permit(:event_id, :attendee_id)
  end
end

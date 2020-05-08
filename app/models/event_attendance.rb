class EventAttendance < ApplicationRecord
  belongs_to :event
  belongs_to :attendee, class_name: 'User'
end

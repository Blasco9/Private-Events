class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :event_attendances, foreign_key: 'attendee_id'
  has_many :appointed_events, through: :event_attendances, source: :event
end

class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :description, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :event_attendances
  has_many :attendees, through: :event_attendances, class_name: 'User', foreign_key: 'attendee_id'
end

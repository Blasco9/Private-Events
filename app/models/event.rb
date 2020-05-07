class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :description, presence: true

  belongs_to :creator, class_name: 'User'
end

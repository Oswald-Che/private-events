class Event < ApplicationRecord
  has_many :events_users, foreign_key: "attended_events_id"
  has_many :attendees, through: :events_users, source: :attendee
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
end

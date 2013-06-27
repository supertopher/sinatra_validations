class Event < ActiveRecord::Base
  validates :organizer_name,  presence: true
  validates :organizer_email, presence: true
  validates :title,           presence: true
  validates :date,            presence: true
end

class Event < ActiveRecord::Base
  def method_name

  end
  create_table :events do |t|
    t.string :organizer_name,
    t.string :title,
    t.string :date,
    t.string :organizer_email
end

require 'faker'

10.times do |i|
  Event.create({
    :date => Time.at(rand * Time.now.to_i),
    :title => Faker::Company.catch_phrase,
    :organizer_name => Faker::Company.catch_phrase,
    :organizer_email => Faker::Internet.email })
end

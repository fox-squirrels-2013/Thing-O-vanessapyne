require 'active_record'
require 'faker'
require_relative './models/saab.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
  database: 'saab' )

Saab.create(model: "900", color: "white", make_year: "1994")


10.times do |i|
  Saab.create(model: Faker::Lorem.word, color: Faker::Name.first_name, 
    make_year: Faker::Number.number(4))
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Attendance.destroy_all
require 'faker'

10.times do
  user = User.create!( email:"#{Faker::Name.first_name}@yopmail.com",
                       encrypted_password:Faker::Internet.password,
  	                   description:Faker::TvShows::HowIMetYourMother.quote,
  	                   first_name:Faker::Name.first_name , 
  	                   last_name:Faker::Name.last_name 
                 
  	                    )
end
puts "user "

i = 1
10.times do 
	event = Event.create!(start_date: Faker::Date.forward(days: 23),
		                  duration: 30,
		                  title:"My event #{i}",
		                  description:Faker::TvShows::HowIMetYourMother.quote,
		                  price: Faker::Number.between(from: 1, to: 1000),
		                  location:Faker::Nation.capital_city
		                  )
                          i+= 1
		                  
end	
puts "event"

10.times do
	attendance = Attendance.create!(stripe_customer_id:Faker::Address.country_code, 
		                            user: User.all.sample, 
		                            event: Event.all.sample
		                            )

end
puts "attendance"





		                   

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

personal_interests = [
  "Work-life balance", "Family", "Reading", "Volunteer work", "Sports & activities", "Cooking",
  "Arts & music"
]

professional_interests = [
"Sales", "Marketing", "Computer Programming", "Linux", "MacOS", "Windows", "Operations",
"Devops", "Product Management", "Project Management", "Artificial Inteligence", "Data Science", "IoT" ]

puts "Creating Personal interests"

personal_interests.each do |interest|
  Interest.create(name: interest, category: "personal")
end

puts "Creating Professional interests"
professional_interests.each do |interest|
  Interest.create(name: interest, category: "professional")
end

Milestone.destroy_all
Goal.destroy_all
Message.destroy_all
Connection.destroy_all
User.destroy_all
Profile.destroy_all
Interest.destroy_all

puts "Creating users"

ashwin = User.new(first_name: "Ashwin", last_name: "Smith", email: "ashwin@email.com", password: "12341234", company: "Grab", job_title: "Director of Marketing")
ashwin.remote_photo_url = "https://ichef.bbci.co.uk/onesport/cps/624/cpsprodpb/9AC9/production/_102652693_raviashwinrex.jpg"
ashwin.save

peter = User.new(first_name: "Peter", last_name: "Lee", email: "peter@email.com", password: "12341234")
peter.save

george = User.new(first_name: "George", last_name: "Balls", email: "george@email.com", password: "12341234")
george.save

lorenzo = User.new(first_name: "Lorenzo", last_name: "Curley", email: "lorenzo@email.com", password: "12341234", company: "The World", job_title: "Chief Marketing Officer")
lorenzo.save

john = User.new(first_name: "John", last_name: "J-hon", email: "john@email.com", password: "12341234")
john.save

charles = User.new(first_name: "Charles", last_name: "Babe", email: "charles@email.com", password: "12341234")
charles.save

janna = User.new(first_name: "Janna", last_name: "De Vos", email: "janna@email.com", password: "12341234")
janna.save

kane = User.new(first_name: "Kane", last_name: "Handsome", email: "kane@email.com", password: "12341234")
kane.save

vilson = User.new(first_name: "Vilson", last_name: "Hulk", email: "vilson@email.com", password: "12341234")
vilson.save

romain = User.new(first_name: "Romain", last_name: "Beach Body", email: "romain@email.com", password: "12341234")
romain.save

guido = User.new(first_name: "Guido", last_name: "Motorbike", email: "guido@email.com", password: "12341234")
guido.save

melissa = User.new(first_name: "Melissa", last_name: "Berribi", email: "melissa@email.com", password: "12341234")
melissa.save

puts "Users created"

puts "Creating profiles"

ashwin_mentor_profile = Profile.new(user: ashwin, is_mentor: true)
ashwin_mentor_profile.save

peter_mentee_profile = Profile.new(user: peter, is_mentor: false)
peter_mentee_profile.save

george_mentor_profile = Profile.new(user: george, is_mentor: true)
george_mentor_profile.save

george_mentee_profile = Profile.new(user: george, is_mentor: false)
george_mentee_profile.save

lorenzo_mentee_profile = Profile.new(user: lorenzo, is_mentor: false)
lorenzo_mentee_profile.save

john_mentor_profile = Profile.new(user: john, is_mentor: true)
john_mentor_profile.save

charles_mentor_profile = Profile.new(user: charles, is_mentor: true)
charles_mentor_profile

janna_mentor_profile = Profile.new(user: janna, is_mentor: true)
janna_mentor_profile.save

janna_mentee_profile = Profile.new(user: janna, is_mentor: false)
janna_mentee_profile.save

kane_mentor_profile = Profile.new(user: kane, is_mentor: true)
kane_mentor_profile.save

vilson_mentor_profile = Profile.new(user: vilson, is_mentor: true)
vilson_mentor_profile.save

romain_mentor_profile = Profile.new(user: romain, is_mentor: true)
romain_mentor_profile.save

guido_mentor_profile = Profile.new(user: guido, is_mentor: true)
guido_mentor_profile.save

melissa_mentor_profile = Profile.new(user: melissa, is_mentor: true)
melissa_mentor_profile.save

puts "Profiles created"

puts "Creating connections"

janna_ashwin_connection = Connection.new(mentor: ashwin_mentor_profile, mentee: janna_mentee_profile)
janna_ashwin_connection.save

lorenzo_janna_connection = Connection.new(mentor: janna_mentor_profile, mentee: lorenzo_mentee_profile)
lorenzo_janna_connection.save

peter_janna_connection = Connection.new(mentor: janna_mentor_profile, mentee: peter_mentee_profile)
peter_janna_connection.save
puts "Connections created"

puts "Creating messages"
janna_ashwin_message = Message.new(content: "new message", user: janna, is_read: false, connection: janna_ashwin_connection)
janna_ashwin_message.save

lorenzo_janna_message = Message.new(content: "hellow", user: lorenzo, is_read: true, connection: lorenzo_janna_connection)
lorenzo_janna_message.save

janna_lorenzo_message = Message.new(content: "Lets go have some fun at tannelot", user: janna, is_read: true, connection: lorenzo_janna_connection)
janna_lorenzo_message.save

peter_janna_message = Message.new(content: "arigato", user: peter, is_read: true, connection: peter_janna_connection)
peter_janna_message.save

ashwin_janna_message = Message.new(content: "reply to new message", user: ashwin, is_read: false, connection: janna_ashwin_connection)
ashwin_janna_message.save

puts "Creating goals"

goal1 = Goal.new(description: "Win the lottery every week of the year", connection: janna_ashwin_connection)
goal1.save

goal2 = Goal.new(description: "Get jacked for the summer holidays", connection: janna_ashwin_connection)
goal2.save

goal3 = Goal.new(description: "Ride a motorcycle like a king on wheels", connection: lorenzo_janna_connection)
goal3.save


puts "Goals created"

puts "Creating milestones"

ms1 = Milestone.new(description: "Buy lottery tickets", goal: goal1, is_completed: true)
ms1.save

ms2 = Milestone.new(description: "Make a spreadsheet with historical winning numbers", goal: goal1, is_completed: false)
ms2.save

ms3 = Milestone.new(description: "Build a crazy algorithm to predict winning numbers", goal: goal1, is_completed: false)
ms3.save

puts "Milestones created"



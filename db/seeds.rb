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

Message.destroy_all
Connection.destroy_all
User.destroy_all
Profile.destroy_all
Interest.destroy_all

puts "Creating users"

ashwin = User.new(first_name: "ashwin", last_name: "Smith", email: "ashwin@email.com", password: "12341234", company: "Grab", job_title: "Director of Marketing")
ashwin.remote_photo_url = "https://ichef.bbci.co.uk/onesport/cps/624/cpsprodpb/9AC9/production/_102652693_raviashwinrex.jpg"
ashwin.save

peter = User.new(email: "peter@email.com", password: "12341234")
peter.save

george = User.new(email: "george@email.com", password: "12341234")
george.save

lorenzo = User.new(first_name: "Lorenzo", last_name: "Curley", email: "lorenzo@email.com", password: "12341234", company: "The World", job_title: "Chief Marketing Officer")
lorenzo.save

john = User.new(email: "john@email.com", password: "12341234")
john.save

charles = User.new(email: "charles@email.com", password: "12341234")
charles.save

janna = User.new(email: "janna@email.com", password: "12341234")
janna.save

kane = User.new(email: "kane@email.com", password: "12341234")
kane.save

vilson = User.new(email: "vilson@email.com", password: "12341234")
vilson.save

romain = User.new(email: "romain@email.com", password: "12341234")
romain.save

guido = User.new(email: "guido@email.com", password: "12341234")
guido.save

melissa = User.new(email: "melissa@email.com", password: "12341234")
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




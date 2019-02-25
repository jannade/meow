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

puts "Creating users"

ashwin = User.new(first_name: "ashwin", last_name: "Smith", email: "ashwin@email.com", password: "12341234", company: "Grab", job_title: "Director of Marketing")
# ashwin.remote_photo_url = "https://ichef.bbci.co.uk/onesport/cps/624/cpsprodpb/9AC9/production/_102652693_raviashwinrex.jpg"
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

puts "Set interests for profiles"

ashwin_mentor_profile.interests << Interest.find(2)
ashwin_mentor_profile.interests << Interest.find(3)
ashwin_mentor_profile.interests << Interest.find(4)
ashwin_mentor_profile.interests << Interest.find(5)
ashwin_mentor_profile.interests << Interest.find(6)
ashwin_mentor_profile.interests << Interest.find(9)
ashwin_mentor_profile.interests << Interest.find(10)
ashwin_mentor_profile.interests << Interest.find(11)
ashwin_mentor_profile.interests << Interest.find(12)
ashwin_mentor_profile.interests << Interest.find(13)
ashwin_mentor_profile.save

george_mentor_profile.interests << Interest.first
george_mentor_profile.interests << Interest.find(2)
george_mentor_profile.interests << Interest.find(4)
george_mentor_profile.interests << Interest.find(6)
george_mentor_profile.interests << Interest.find(7)
george_mentor_profile.interests << Interest.find(11)
george_mentor_profile.interests << Interest.find(13)
george_mentor_profile.interests << Interest.find(17)
george_mentor_profile.interests << Interest.find(19)
george_mentor_profile.interests << Interest.find(20)
george_mentor_profile.save

peter_mentee_profile.interests << Interest.first
peter_mentee_profile.interests << Interest.find(2)
peter_mentee_profile.interests << Interest.find(3)
peter_mentee_profile.interests << Interest.find(6)
peter_mentee_profile.interests << Interest.find(7)
peter_mentee_profile.interests << Interest.find(8)
peter_mentee_profile.interests << Interest.find(10)
peter_mentee_profile.interests << Interest.find(12)
peter_mentee_profile.interests << Interest.find(14)
peter_mentee_profile.interests << Interest.find(16)
peter_mentee_profile.save

john_mentor_profile.interests << Interest.first
john_mentor_profile.interests << Interest.find(3)
john_mentor_profile.interests << Interest.find(4)
john_mentor_profile.interests << Interest.find(5)
john_mentor_profile.interests << Interest.find(6)
john_mentor_profile.interests << Interest.find(16)
john_mentor_profile.interests << Interest.find(17)
john_mentor_profile.interests << Interest.find(18)
john_mentor_profile.interests << Interest.find(19)
john_mentor_profile.interests << Interest.find(20)
john_mentor_profile.save

charles_mentor_profile.interests << Interest.find(3)
charles_mentor_profile.interests << Interest.find(4)
charles_mentor_profile.interests << Interest.find(5)
charles_mentor_profile.interests << Interest.find(6)
charles_mentor_profile.interests << Interest.find(7)
charles_mentor_profile.interests << Interest.find(8)
charles_mentor_profile.interests << Interest.find(10)
charles_mentor_profile.interests << Interest.find(12)
charles_mentor_profile.interests << Interest.find(14)
charles_mentor_profile.interests << Interest.find(16)
charles_mentor_profile.save

janna_mentor_profile.interests << Interest.find(3)
janna_mentor_profile.interests << Interest.find(4)
janna_mentor_profile.interests << Interest.find(5)
janna_mentor_profile.interests << Interest.find(6)
janna_mentor_profile.interests << Interest.find(7)
janna_mentor_profile.interests << Interest.find(8)
janna_mentor_profile.interests << Interest.find(10)
janna_mentor_profile.interests << Interest.find(12)
janna_mentor_profile.interests << Interest.find(14)
janna_mentor_profile.interests << Interest.find(16)
janna_mentor_profile.save

kane_mentor_profile.interests << Interest.first
kane_mentor_profile.interests << Interest.find(2)
kane_mentor_profile.interests << Interest.find(3)
kane_mentor_profile.interests << Interest.find(6)
kane_mentor_profile.interests << Interest.find(7)
kane_mentor_profile.interests << Interest.find(8)
kane_mentor_profile.interests << Interest.find(10)
kane_mentor_profile.interests << Interest.find(12)
kane_mentor_profile.interests << Interest.find(14)
kane_mentor_profile.interests << Interest.find(16)
kane_mentor_profile.save

vilson_mentor_profile.interests << Interest.find(3)
vilson_mentor_profile.interests << Interest.find(4)
vilson_mentor_profile.interests << Interest.find(5)
vilson_mentor_profile.interests << Interest.find(6)
vilson_mentor_profile.interests << Interest.find(7)
vilson_mentor_profile.interests << Interest.find(8)
vilson_mentor_profile.interests << Interest.find(9)
vilson_mentor_profile.interests << Interest.find(10)
vilson_mentor_profile.interests << Interest.find(11)
vilson_mentor_profile.interests << Interest.find(12)
vilson_mentor_profile.save

romain_mentor_profile.interests << Interest.find(2)
romain_mentor_profile.interests << Interest.find(4)
romain_mentor_profile.interests << Interest.find(5)
romain_mentor_profile.interests << Interest.find(6)
romain_mentor_profile.interests << Interest.find(7)
romain_mentor_profile.interests << Interest.find(10)
romain_mentor_profile.interests << Interest.find(17)
romain_mentor_profile.interests << Interest.find(18)
romain_mentor_profile.interests << Interest.find(19)
romain_mentor_profile.interests << Interest.find(20)
romain_mentor_profile.save

guido_mentor_profile.interests << Interest.find(2)
guido_mentor_profile.interests << Interest.find(3)
guido_mentor_profile.interests << Interest.find(4)
guido_mentor_profile.interests << Interest.find(5)
guido_mentor_profile.interests << Interest.find(6)
guido_mentor_profile.interests << Interest.find(11)
guido_mentor_profile.interests << Interest.find(13)
guido_mentor_profile.interests << Interest.find(15)
guido_mentor_profile.interests << Interest.find(17)
guido_mentor_profile.interests << Interest.find(19)
guido_mentor_profile.save

melissa_mentor_profile.interests << Interest.first
melissa_mentor_profile.interests << Interest.find(3)
melissa_mentor_profile.interests << Interest.find(4)
melissa_mentor_profile.interests << Interest.find(6)
melissa_mentor_profile.interests << Interest.find(7)
melissa_mentor_profile.interests << Interest.find(10)
melissa_mentor_profile.interests << Interest.find(14)
melissa_mentor_profile.interests << Interest.find(16)
melissa_mentor_profile.interests << Interest.find(17)
melissa_mentor_profile.interests << Interest.find(18)
melissa_mentor_profile.save

puts "Interests created"

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

peter_janna_message = Message.new(content: "arigato", user: peter, is_read: true, connection: peter_janna_connection)
peter_janna_message.save




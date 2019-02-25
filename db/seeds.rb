# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Milestone.destroy_all
Goal.destroy_all
Message.destroy_all
Connection.destroy_all
Profile.destroy_all
User.destroy_all
Interest.destroy_all

personal_interests = ["Work-life balance", "Family", "Reading", "Volunteer work",
  "Sports & activities", "Cooking", "Arts & music"]

professional_interests = ["Sales", "Marketing", "Finance", "Computer Programming", "Linux",
"MacOS", "Windows", "Operations", "Devops", "Product Management", "Project Management",
"Artificial Inteligence", "Data Science", "IoT"]

puts "Creating Personal interests"

personal_interests.each do |interest|
  Interest.create(name: interest, category: "personal")
end

puts "Personal interests created"

puts "Creating Professional interests"
professional_interests.each do |interest|
  Interest.create(name: interest, category: "professional")
end

puts "Professional interests created"


puts "creating interests"

# i1 = Interest.create(name: "Work life balance", category: "personal")
# i2 = Interest.create(name: "Family", category: "personal")
# i3 = Interest.create(name: "Reading", category: "personal")
# i4 = Interest.create(name: "Volunteer work", category: "personal")
# i5 = Interest.create(name: "Sports & activities", category: "personal")
# i6 = Interest.create(name: "Cooking", category: "personal")
# i7 = Interest.create(name: "Arts & music", category: "personal")

# pi1 = Interest.create(name: "Sales", category: "professional")
# pi2 = Interest.create(name: "Marketing", category: "professional")
# pi3 = Interest.create(name: "Finance", category: "professional")
# pi4 = Interest.create(name: "Computer Programming", category: "professional")
# pi5 = Interest.create(name: "Product Management", category: "professional")


puts "Creating users"

ashwin = User.new(first_name: "Ashwin", last_name: "Smith", email: "ashwin@email.com", password: "12341234", company: "Grab", job_title: "Director of Marketing")
ashwin.save

peter = User.new(first_name: "Peter", last_name: "Lee", email: "peter@email.com", password: "12341234", company: "Le Wagon", job_title: "Teaching Assistant")
peter.save

george = User.new(first_name: "George", last_name: "Balls", email: "george@email.com", password: "12341234", company: "Heroleads", job_title: "Chief Technology Officer")
george.save

lorenzo = User.new(first_name: "Lorenzo", last_name: "Curley", email: "lorenzo@email.com", password: "12341234", company: "The World", job_title: "Chief Marketing Officer")
lorenzo.save

john = User.new(first_name: "John", last_name: "J-hon", email: "john@email.com", password: "12341234", company: "Go-Jek", job_title: "Director of Marketing")
john.save

charles = User.new(first_name: "Charles", last_name: "Babe", email: "charles@email.com", password: "12341234", company: "Coffee and Coconuts", job_title: "Director of Marketing")
charles.save

janna = User.new(first_name: "Janna", last_name: "De Vos", email: "janna@email.com", password: "12341234", company: "Apple", job_title: "Director of Marketing")
janna.save

kane = User.new(first_name: "Kane", last_name: "Handsome", email: "kane@email.com", password: "12341234", company: "Mocca", job_title: "Director of Marketing")
kane.save

vilson = User.new(first_name: "Vilson", last_name: "Hulk", email: "vilson@email.com", password: "12341234", company: "FaceBook", job_title: "Director of Marketing")
vilson.save

romain = User.new(first_name: "Romain", last_name: "Beach Body", email: "romain@email.com", password: "12341234", company: "Samsung", job_title: "Director of Marketing")
romain.save

guido = User.new(first_name: "Guido", last_name: "Motorbike", email: "guido@email.com", password: "12341234", company: "Nokia", job_title: "Director of Marketing")
guido.save

melissa = User.new(first_name: "Melissa", last_name: "Berribi", email: "melissa@email.com", password: "12341234", company: "Spotify", job_title: "Director of Marketing")
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

# p_i1 = ProfileInterest.new(profile: ashwin_mentor_profile, interest: i1)
# p_i2 = ProfileInterest.new(profile: ashwin_mentor_profile, interest: i2)
# p_i3 = ProfileInterest.new(profile: ashwin_mentor_profile, interest: pi2)
# p_i4 = ProfileInterest.new(profile: ashwin_mentor_profile, interest: pi3)

# p_i1 = ProfileInterest.new(profile: peter_mentee_profile, interest: i1)
# p_i2 = ProfileInterest.new(profile: peter_mentee_profile, interest: i2)
# p_i3 = ProfileInterest.new(profile: peter_mentee_profile, interest: pi2)
# p_i4 = ProfileInterest.new(profile: peter_mentee_profile, interest: pi3)


# ashwin_mentor_profile.interests << Interest.find(85)
# ashwin_mentor_profile.interests << Interest.find(86)
# ashwin_mentor_profile.interests << Interest.find(87)
# ashwin_mentor_profile.interests << Interest.find(88)
# ashwin_mentor_profile.interests << Interest.find(89)
# ashwin_mentor_profile.interests << Interest.find(90)
# ashwin_mentor_profile.interests << Interest.find(91)
# ashwin_mentor_profile.interests << Interest.find(92)
# ashwin_mentor_profile.interests << Interest.find(93)
# ashwin_mentor_profile.interests << Interest.find(94)
# ashwin_mentor_profile.save

# # george_mentor_profile.interests << Interest.first
# # george_mentor_profile.interests << Interest.find(2)
# # george_mentor_profile.interests << Interest.find(4)
# # george_mentor_profile.interests << Interest.find(6)
# # george_mentor_profile.interests << Interest.find(7)
# # george_mentor_profile.interests << Interest.find(11)
# # george_mentor_profile.interests << Interest.find(13)
# # george_mentor_profile.interests << Interest.find(17)
# # george_mentor_profile.interests << Interest.find(19)
# # george_mentor_profile.interests << Interest.find(20)
# # george_mentor_profile.save

# peter_mentee_profile.interests << Interest.find(85)
# peter_mentee_profile.interests << Interest.find(86)
# peter_mentee_profile.interests << Interest.find(87)
# peter_mentee_profile.interests << Interest.find(88)
# peter_mentee_profile.interests << Interest.find(89)
# peter_mentee_profile.interests << Interest.find(90)
# peter_mentee_profile.interests << Interest.find(91)
# peter_mentee_profile.interests << Interest.find(92)
# peter_mentee_profile.interests << Interest.find(93)
# peter_mentee_profile.interests << Interest.find(94)
# peter_mentee_profile.save

# # john_mentor_profile.interests << Interest.first
# # john_mentor_profile.interests << Interest.find(3)
# # john_mentor_profile.interests << Interest.find(4)
# # john_mentor_profile.interests << Interest.find(5)
# # john_mentor_profile.interests << Interest.find(6)
# # john_mentor_profile.interests << Interest.find(16)
# # john_mentor_profile.interests << Interest.find(17)
# # john_mentor_profile.interests << Interest.find(18)
# # john_mentor_profile.interests << Interest.find(19)
# # john_mentor_profile.interests << Interest.find(20)
# # john_mentor_profile.save

# # charles_mentor_profile.interests << Interest.find(3)
# # charles_mentor_profile.interests << Interest.find(4)
# # charles_mentor_profile.interests << Interest.find(5)
# # charles_mentor_profile.interests << Interest.find(6)
# # charles_mentor_profile.interests << Interest.find(7)
# # charles_mentor_profile.interests << Interest.find(8)
# # charles_mentor_profile.interests << Interest.find(10)
# # charles_mentor_profile.interests << Interest.find(12)
# # charles_mentor_profile.interests << Interest.find(14)
# # charles_mentor_profile.interests << Interest.find(16)
# # charles_mentor_profile.save

# # janna_mentor_profile.interests << Interest.find(3)
# # janna_mentor_profile.interests << Interest.find(4)
# # janna_mentor_profile.interests << Interest.find(5)
# # janna_mentor_profile.interests << Interest.find(6)
# # janna_mentor_profile.interests << Interest.find(7)
# # janna_mentor_profile.interests << Interest.find(8)
# # janna_mentor_profile.interests << Interest.find(10)
# # janna_mentor_profile.interests << Interest.find(12)
# # janna_mentor_profile.interests << Interest.find(14)
# # janna_mentor_profile.interests << Interest.find(16)
# # janna_mentor_profile.save

# # kane_mentor_profile.interests << Interest.first
# # kane_mentor_profile.interests << Interest.find(2)
# # kane_mentor_profile.interests << Interest.find(3)
# # kane_mentor_profile.interests << Interest.find(6)
# # kane_mentor_profile.interests << Interest.find(7)
# # kane_mentor_profile.interests << Interest.find(8)
# # kane_mentor_profile.interests << Interest.find(10)
# # kane_mentor_profile.interests << Interest.find(12)
# # kane_mentor_profile.interests << Interest.find(14)
# # kane_mentor_profile.interests << Interest.find(16)
# # kane_mentor_profile.save

# # vilson_mentor_profile.interests << Interest.find(3)
# # vilson_mentor_profile.interests << Interest.find(4)
# # vilson_mentor_profile.interests << Interest.find(5)
# # vilson_mentor_profile.interests << Interest.find(6)
# # vilson_mentor_profile.interests << Interest.find(7)
# # vilson_mentor_profile.interests << Interest.find(8)
# # vilson_mentor_profile.interests << Interest.find(9)
# # vilson_mentor_profile.interests << Interest.find(10)
# # vilson_mentor_profile.interests << Interest.find(11)
# # vilson_mentor_profile.interests << Interest.find(12)
# # vilson_mentor_profile.save

# # romain_mentor_profile.interests << Interest.find(2)
# # romain_mentor_profile.interests << Interest.find(4)
# # romain_mentor_profile.interests << Interest.find(5)
# # romain_mentor_profile.interests << Interest.find(6)
# # romain_mentor_profile.interests << Interest.find(7)
# # romain_mentor_profile.interests << Interest.find(10)
# # romain_mentor_profile.interests << Interest.find(17)
# # romain_mentor_profile.interests << Interest.find(18)
# # romain_mentor_profile.interests << Interest.find(19)
# # romain_mentor_profile.interests << Interest.find(20)
# # romain_mentor_profile.save

# # guido_mentor_profile.interests << Interest.find(2)
# # guido_mentor_profile.interests << Interest.find(3)
# # guido_mentor_profile.interests << Interest.find(4)
# # guido_mentor_profile.interests << Interest.find(5)
# # guido_mentor_profile.interests << Interest.find(6)
# # guido_mentor_profile.interests << Interest.find(11)
# # guido_mentor_profile.interests << Interest.find(13)
# # guido_mentor_profile.interests << Interest.find(15)
# # guido_mentor_profile.interests << Interest.find(17)
# # guido_mentor_profile.interests << Interest.find(19)
# # guido_mentor_profile.save

# # melissa_mentor_profile.interests << Interest.first
# # melissa_mentor_profile.interests << Interest.find(3)
# # melissa_mentor_profile.interests << Interest.find(4)
# # melissa_mentor_profile.interests << Interest.find(6)
# # melissa_mentor_profile.interests << Interest.find(7)
# # melissa_mentor_profile.interests << Interest.find(10)
# # melissa_mentor_profile.interests << Interest.find(14)
# # melissa_mentor_profile.interests << Interest.find(16)
# # melissa_mentor_profile.interests << Interest.find(17)
# # melissa_mentor_profile.interests << Interest.find(18)
# # melissa_mentor_profile.save

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

goalLJ = Goal.new(description: "Become the best coders in the world", connection: lorenzo_janna_connection)
goalLJ.save

goalLJ2 = Goal.new(description: "Get as fit as dede the bootcamp trainer", connection: lorenzo_janna_connection)
goalLJ2.save

puts "Goals created"

puts "Creating milestones"

ms1 = Milestone.new(description: "Buy lottery tickets", goal: goal1, is_completed: true)
ms1.save

ms2 = Milestone.new(description: "Make a spreadsheet with historical winning numbers", goal: goal1, is_completed: false)
ms2.save

ms3 = Milestone.new(description: "Build a crazy algorithm to predict winning numbers", goal: goal1, is_completed: false)
ms3.save

mslj1 = Milestone.new(description: "Sign-up for Le Wagon Bootcamp", is_completed: true)
mslj1.save

mslj2 = Milestone.new(description: "Complete Le Wagon Bootcamp", is_completed: false)
mslj2.save

mslj3 = Milestone.new(description: "Do 50 hours of freelancing", is_completed: false)
mslj3.save


puts "Milestones created"

puts "Messages created"


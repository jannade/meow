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

ashwin = User.new(email: "ashwin@email.com", password: "12341234")
ashwin.save

peter = User.new(email: "peter@email.com", password: "12341234")
peter.save

george = User.new(email: "george@email.com", password: "12341234")
george.save

lorenzo = User.new(email: "lorenzo@email.com", password: "12341234")
lorenzo.save

janna = User.new(email: "janna@email.com", password: "12341234")

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

janna_mentor_profile = Profile.new(user: janna, is_mentor: true)
janna_mentor_profile.save

janna_mentee_profile = Profile.new(user: janna, is_mentor: false)
janna_mentee_profile.save

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

peter_janna_message = Message.new(content: "arigato", user: peter, is_read: true, connection: peter_janna_connection)
peter_janna_message.save








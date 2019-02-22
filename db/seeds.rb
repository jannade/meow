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

john = User.new(email: "john@email.com", password: "12341234")
john.save

charles = User.new(email: "charles@email.com", password: "12341234")
charles.save

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

puts "Profiles created"

puts "Set interests for profiles"

ashwin_mentor_profile.interests << Interest.first
ashwin_mentor_profile.interests << Interest.last

ashwin_mentor_profile.save

george_mentor_profile.interests << Interest.find(2)
george_mentor_profile.interests << Interest.find(3)

george_mentor_profile.save

peter_mentee_profile.interests << Interest.first
peter_mentee_profile.interests << Interest.find(3)

peter_mentee_profile.save

john_mentor_profile.interests << Interest.first
john_mentor_profile.interests << Interest.find(4)
john_mentor_profile.interests << Interest.find(3)
john_mentor_profile.save

charles_mentor_profile.interests << Interest.find(2)
charles_mentor_profile.interests << Interest.find(4)
charles_mentor_profile.save



puts "Interests created"









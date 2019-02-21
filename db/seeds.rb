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

puts "Profiles created"







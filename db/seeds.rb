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



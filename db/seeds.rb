# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Milestone.destroy_all
Goal.destroy_all
Message.destroy_all
Connection.destroy_all
Profile.destroy_all
User.destroy_all
Interest.destroy_all


puts "Creating interests"

personal_interests = ["Work-life balance", "Family", "Reading", "Volunteer work",
  "Sports & activities", "Cooking", "Arts & music"]

pe1 = Interest.create(name: personal_interests[0], category: "personal")
pe2 = Interest.create(name: personal_interests[1], category: "personal")
pe3 = Interest.create(name: personal_interests[2], category: "personal")
pe4 = Interest.create(name: personal_interests[3], category: "personal")
pe5 = Interest.create(name: personal_interests[4], category: "personal")
pe6 = Interest.create(name: personal_interests[5], category: "personal")
pe7 = Interest.create(name: personal_interests[6], category: "personal")

professional_interests = ["Sales", "Marketing", "Finance", "Product Management", "Leadership", "Presentation skills", "Public speaking"]

pr1 = Interest.create(name: professional_interests[0], category: "professional")
pr2 = Interest.create(name: professional_interests[1], category: "professional")
pr3 = Interest.create(name: professional_interests[2], category: "professional")
pr4 = Interest.create(name: professional_interests[3], category: "professional")
pr5 = Interest.create(name: professional_interests[4], category: "professional")
pr6 = Interest.create(name: professional_interests[5], category: "professional")
pr7 = Interest.create(name: professional_interests[6], category: "professional")


puts "Interests created"


puts "Creating users"

ashwin = User.new(first_name: "Ashwin", last_name: "Smith", email: "ashwin@email.com", password: "12341234", company: "Grab", job_title: "Director of Marketing")
ashwin.save

peter = User.new(first_name: "Peter", last_name: "Lee", email: "peter@email.com", password: "12341234", company: "Le Wagon", job_title: "Teaching Assistant")
peter.save

george = User.new(first_name: "George", last_name: "Balls", email: "george@email.com", password: "12341234", company: "Heroleads", job_title: "Chief Technology Officer")
george.save

lorenzo = User.new(first_name: "Lorenzo", last_name: "Curley", email: "lorenzo@email.com", password: "12341234", company: "The World", job_title: "Chief Marketing Officer")
lorenzo.save

# john = User.new(first_name: "John", last_name: "J-hon", email: "john@email.com", password: "12341234", company: "Go-Jek", job_title: "Director of Marketing")
# john.save

# charles = User.new(first_name: "Charles", last_name: "Babe", email: "charles@email.com", password: "12341234", company: "Coffee and Coconuts", job_title: "Director of Marketing")
# charles.save

jane = User.new(first_name: "Jane", last_name: "De Vos", email: "jane@email.com", password: "12341234", company: "Apple", job_title: "Director of Marketing")
jane.save

# kane = User.new(first_name: "Kane", last_name: "Handsome", email: "kane@email.com", password: "12341234", company: "Mocca", job_title: "Director of Marketing")
# kane.save

# vilson = User.new(first_name: "Vilson", last_name: "Hulk", email: "vilson@email.com", password: "12341234", company: "FaceBook", job_title: "Director of Marketing")
# vilson.save

# romain = User.new(first_name: "Romain", last_name: "Beach Body", email: "romain@email.com", password: "12341234", company: "Samsung", job_title: "Director of Marketing")
# romain.save

# guido = User.new(first_name: "Guido", last_name: "Motorbike", email: "guido@email.com", password: "12341234", company: "Nokia", job_title: "Director of Marketing")
# guido.save

# melissa = User.new(first_name: "Melissa", last_name: "Berribi", email: "melissa@email.com", password: "12341234", company: "Spotify", job_title: "Director of Marketing")
# melissa.save

puts "Users created"

puts "Creating profiles"

puts "Creating users that are just mentors"

ashwin_mentor_profile = Profile.new(user: ashwin, is_mentor: true)
ashwin_mentor_profile.save

george_mentor_profile = Profile.new(user: george, is_mentor: true)
george_mentor_profile.save

# john_mentor_profile = Profile.new(user: john, is_mentor: true)
# john_mentor_profile.save

# charles_mentor_profile = Profile.new(user: charles, is_mentor: true)
# charles_mentor_profile

puts "Creating users that are just mentees"

peter_mentee_profile = Profile.new(user: peter, is_mentor: false)
peter_mentee_profile.save


lorenzo_mentee_profile = Profile.new(user: lorenzo, is_mentor: false)
lorenzo_mentee_profile.save


puts "Creating users that are both mentee and mentor"

jane_mentor_profile = Profile.new(user: jane, is_mentor: true)
jane_mentor_profile.save

jane_mentee_profile = Profile.new(user: jane, is_mentor: false)
jane_mentee_profile.save

# kane_mentor_profile = Profile.new(user: kane, is_mentor: true)
# kane_mentor_profile.save

# vilson_mentor_profile = Profile.new(user: vilson, is_mentor: true)
# vilson_mentor_profile.save

# romain_mentor_profile = Profile.new(user: romain, is_mentor: true)
# romain_mentor_profile.save

# guido_mentor_profile = Profile.new(user: guido, is_mentor: true)
# guido_mentor_profile.save

# melissa_mentor_profile = Profile.new(user: melissa, is_mentor: true)
# melissa_mentor_profile.save

puts "Profiles created"

puts "Set interests for profiles"

ashwin_mentor_i1 = ProfileInterest.create(profile: ashwin_mentor_profile, interest: pe1)
ashwin_mentor_i2 = ProfileInterest.create(profile: ashwin_mentor_profile, interest: pe2)
ashwin_mentor_i3 = ProfileInterest.create(profile: ashwin_mentor_profile, interest: pe3)
ashwin_mentor_i4 = ProfileInterest.create(profile: ashwin_mentor_profile, interest: pr1)
ashwin_mentor_i5 = ProfileInterest.create(profile: ashwin_mentor_profile, interest: pr2)
ashwin_mentor_i6 = ProfileInterest.create(profile: ashwin_mentor_profile, interest: pr3)


george_mentor_i1 = ProfileInterest.create(profile: george_mentor_profile, interest: pe4)
george_mentor_i2 = ProfileInterest.create(profile: george_mentor_profile, interest: pe5)
george_mentor_i3 = ProfileInterest.create(profile: george_mentor_profile, interest: pe6)
george_mentor_i4 = ProfileInterest.create(profile: george_mentor_profile, interest: pr4)
george_mentor_i5 = ProfileInterest.create(profile: george_mentor_profile, interest: pr4)
george_mentor_i6 = ProfileInterest.create(profile: george_mentor_profile, interest: pr4)

peter_mentee_i1 = ProfileInterest.create(profile: peter_mentee_profile, interest: pe1)
peter_mentee_i2 = ProfileInterest.create(profile: peter_mentee_profile, interest: pe3)
peter_mentee_i3 = ProfileInterest.create(profile: peter_mentee_profile, interest: pe6)
peter_mentee_i4 = ProfileInterest.create(profile: peter_mentee_profile, interest: pr1)
peter_mentee_i5 = ProfileInterest.create(profile: peter_mentee_profile, interest: pr3)
peter_mentee_i6 = ProfileInterest.create(profile: peter_mentee_profile, interest: pr6)

lorenzo_mentee_i1 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pe2)
lorenzo_mentee_i2 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pe4)
lorenzo_mentee_i3 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pe5)
lorenzo_mentee_i4 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pr2)
lorenzo_mentee_i5 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pr4)
lorenzo_mentee_i6 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pr5)

jane_mentor_i1 = ProfileInterest.create(profile: jane_mentor_profile, interest: pe1)
jane_mentor_i2 = ProfileInterest.create(profile: jane_mentor_profile, interest: pe5)
jane_mentor_i3 = ProfileInterest.create(profile: jane_mentor_profile, interest: pe6)
jane_mentor_i4 = ProfileInterest.create(profile: jane_mentor_profile, interest: pr1)
jane_mentor_i5 = ProfileInterest.create(profile: jane_mentor_profile, interest: pr2)
jane_mentor_i6 = ProfileInterest.create(profile: jane_mentor_profile, interest: pr4)

jane_mentee_i1 = ProfileInterest.create(profile: jane_mentee_profile, interest: pe5)
jane_mentee_i2 = ProfileInterest.create(profile: jane_mentee_profile, interest: pe6)
jane_mentee_i3 = ProfileInterest.create(profile: jane_mentee_profile, interest: pe7)
jane_mentee_i4 = ProfileInterest.create(profile: jane_mentee_profile, interest: pe5)
jane_mentee_i5 = ProfileInterest.create(profile: jane_mentee_profile, interest: pe6)
jane_mentee_i6 = ProfileInterest.create(profile: jane_mentee_profile, interest: pe7)

puts "profiles interests created created"

puts "Creating connections"

ashwin_peter_connection = Connection.new(mentor: ashwin_mentor_profile, mentee: peter_mentee_profile, status: "Pending")
ashwin_peter_connection.save

jane_lorenzo_connection = Connection.new(mentor: jane_mentor_profile, mentee: lorenzo_mentee_profile, status: "Pending")
jane_lorenzo_connection.save

george_jane_connection = Connection.new(mentor: george_mentor_profile, mentee: jane_mentee_profile, status: "confirmed")
george_jane_connection.save

george_peter_connection = Connection.new(mentor: george_mentor_profile, mentee: peter_mentee_profile, status: "confirmed")
george_peter_connection.save

jane_peter_connection = Connection.new(mentor: jane_mentor_profile, mentee: peter_mentee_profile, status: "Pending")
jane_peter_connection.save


puts "Connections created"

puts "Creating messages"

lorenzo_jane_message = Message.new(content: "Hi Jane, I want to connect with you and learn all about your Marketing skills", user: lorenzo, is_read: true, connection: jane_lorenzo_connection)
lorenzo_jane_message.save

george_jane_message = Message.new(content: "Hi Jane, your profile looks amazing. I wanna be just like you", user: george, is_read: true, connection: george_jane_connection)
george_jane_message.save

peter_ashwin_message = Message.new(content: "Hi Ashwin, will you be my mentor?", user: peter, is_read: false, connection: ashwin_peter_connection)
peter_ashwin_message.save


puts "Messages created"

puts "Creating goals"

lorenzo_jane_goal1 = Goal.new(description: "Win the lottery every week of the year", connection: jane_lorenzo_connection)
lorenzo_jane_goal1.save

lorenzo_jane_goal2 = Goal.new(description: "Get jacked for the summer holidays", connection: jane_lorenzo_connection)
lorenzo_jane_goal2.save

lorenzo_jane_goal3 = Goal.new(description: "Ride a motorcycle like a king on wheels", connection: jane_lorenzo_connection)
lorenzo_jane_goal3.save

george_peter_goal1 = Goal.new(description: "Win the lottery", connection: george_peter_connection)
george_peter_goal1.save

george_peter_goal2 = Goal.new(description: "Get as fit as dede the bootcamp trainer", connection: george_peter_connection)
george_peter_goal2.save

puts "Goals created"

puts "Creating milestones"

lorenzo_jane_goal1_ms1 = Milestone.new(description: "Buy lottery tickets", goal: lorenzo_jane_goal1, is_completed: true)
lorenzo_jane_goal1_ms1.save

lorenzo_jane_goal1_ms2 = Milestone.new(description: "Make a spreadsheet with historical winning numbers", goal: lorenzo_jane_goal1, is_completed: false)
lorenzo_jane_goal1_ms2.save

lorenzo_jane_goal1_ms3 = Milestone.new(description: "Build a crazy algorithm to predict winning numbers", goal: lorenzo_jane_goal1, is_completed: false)
lorenzo_jane_goal1_ms3.save

george_peter_goal1_ms1 = Milestone.new(description: "Sign-up for Le Wagon Bootcamp", is_completed: true, goal: george_peter_goal1)
george_peter_goal1_ms1.save

george_peter_goal1_ms2 = Milestone.new(description: "Complete Le Wagon Bootcamp", is_completed: true, goal: george_peter_goal1)
george_peter_goal1_ms2.save

george_peter_goal1_ms3 = Milestone.new(description: "Do 50 hours of freelancing", is_completed: true, goal: george_peter_goal1)
george_peter_goal1_ms3.save


puts "Milestones created"



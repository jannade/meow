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

ashwin = User.new(first_name: "Celina", last_name: "Chew", email: "ashwin@email.com", password: "12341234", company: "Bayer, Greater China", job_title: "President")
ashwin.remote_photo_url = 'https://www.webit.org/files/images/articles/medium/841f3fbc6dfa56492e00088d5cc49eb7.jpeg'
ashwin.save

peter = User.new(first_name: "Patricia", last_name: "Lee", email: "peter@email.com", password: "12341234", company: "Le Wagon", job_title: "Teaching Assistant")
peter.remote_photo_url = 'https://format-com-cld-res.cloudinary.com/image/private/s--LmDveIEe--/c_fill,g_rek_faces,h_200,w_200/a_auto,fl_keep_iptc.progressive,q_95/Grey_background_headshot_of_a_female_employee_in_Hong_Kong_photographed_by_l_Atelier_Photo_umvbow.jpg'
peter.save

george = User.new(first_name: "Jessica", last_name: "Ballard", email: "george@email.com", password: "12341234", company: "Heroleads", job_title: "Chief Technology Officer")
george.remote_photo_url = 'https://assets.entrepreneur.com/content/1x1/300/20160713155734-headshots-kristina-libby-37-final-large.jpeg?width=200&crop=1:1'
george.save

lorenzo = User.new(first_name: "Laura", last_name: "Curley", email: "lorenzo@email.com", password: "12341234", company: "The World", job_title: "Chief Marketing Officer")
lorenzo.remote_photo_url = 'https://businesstalentgroup.com/wp-content/uploads/2018/02/jennifer-posner-napier_gray2_500x500-200x200.jpg'
lorenzo.save

nancy = User.new(first_name: "Nancy", last_name: "Flores", email: "nancy@email.com", password: "12341234", company: "Google", job_title: "Chief Operating Officer")
nancy.remote_photo_url = 'https://thumbor.forbes.com/thumbor/200x200/filters%3Aformat%28jpg%29/https%3A%2F%2Fblogs-images.forbes.com%2Fzackfriedman%2Ffiles%2F2018%2F08%2FDJG-headshot.jpg'
nancy.save

susan = User.new(first_name: "Susan", last_name: "Cooper", email: "susan@email.com", password: "12341234", company: "FaceBook", job_title: "Senior Technical Supervisor")
susan.remote_photo_url = 'https://i.pinimg.com/236x/15/76/4b/15764bccfcdb985c3583904c49cfcd68--corporate-headshots-headshot-ideas.jpg'
susan.save

joyce = User.new(first_name: "Joyce", last_name: "Allen", email: "joyce@email.com", password: "12341234", company: "Airbnb", job_title: "Financial Analyst")
joyce.remote_photo_url = 'https://format-com-cld-res.cloudinary.com/image/private/s---8bz5ra9--/c_crop,h_451,w_667,x_0,y_280/c_fill,g_center,h_200,w_200/a_auto,fl_keep_iptc.progressive,q_95/v1/389c2634877e005c6949f36ad5276e9d/Cincinnati-Headshot-Photographer-The-Breathe-Studio-7086-Edit-WEB.jpg'
joyce.save

jane = User.new(first_name: "Sheryl", last_name: "Sandberg", email: "jane@email.com", password: "12341234", company: "Facebook", job_title: "Chief Operating Officer")
jane.remote_photo_url = 'https://cdn.lynda.com/authors/12077467_200x200_thumb.jpg'
jane.save

lilian = User.new(first_name: "Lilian", last_name: "Perez", email: "lilian@email.com", password: "12341234", company: "Ernst and Young", job_title: "Chief Auditor")
lilian.remote_photo_url = 'https://alexstudio.ch/wp-content/uploads/2017/03/photo-for-cv-linkedin-resume-geneva-testimonials-08.jpg'
lilian.save

erica = User.new(first_name: "Erica", last_name: "Webb", email: "erica@email.com", password: "12341234", company: "Deloitte", job_title: "Actuarial Supervisor")
erica.remote_photo_url = 'https://static1.squarespace.com/static/51171438e4b0c59967aa52ab/t/585d3866d2b857186d55da3c/1423279427763/'
erica.save

tiffany = User.new(first_name: "Tiffany", last_name: "Young", email: "tiffany@email.com", password: "12341234", company: "Louis Vuitton", job_title: "Designer")
tiffany.remote_photo_url = 'https://format-com-cld-res.cloudinary.com/image/private/s--R8JBElU---/c_fill,g_rek_faces,h_200,w_200/a_auto,fl_keep_iptc.progressive,q_95/v1/821c5bc27e1af61d1a20b0ff36ff57c6/Business-Headshots-New-York-NYC-Katherine.jpg'
tiffany.save

madeline = User.new(first_name: "Madeline", last_name: "Fultz", email: "madeline@email.com", password: "12341234", company: "Volkswagen", job_title: "Head of Supply Chain Development")
madeline.remote_photo_url = 'https://format-com-cld-res.cloudinary.com/image/private/s--BlAgK8Ru--/c_fill,g_rek_faces,h_200,w_200/a_auto,fl_keep_iptc.progressive,q_95/v1/ee12edf654158e0df229c7efabe95fe4/accounting-technician-montreal-headshot-formal-yvon-huynh_JPG.jpg'
madeline.save

julia = User.new(first_name: "Julia", last_name: "De Jong", email: "julia@email.com", password: "12341234", company: "Disney", job_title: "Lead Animator")
julia.remote_photo_url = 'https://businesstalentgroup.com/wp-content/uploads/2018/02/jennifer-posner-napier_gray2_500x500-200x200.jpg'
julia.save

alice = User.new(first_name: "Alice", last_name: "Laurent", email: "alice@email.com", password: "12341234", company: "University of Paris", job_title: "Economics Professor")
alice.remote_photo_url = 'https://nicholas.duke.edu/sites/default/files/styles/square_200x200/public/thumbnails/image/EricaHeadshot_1413.jpg?itok=yNyyEgKf'
alice.save

minji = User.new(first_name: "Min Ji", last_name: "Kim", email: "minji@email.com", password: "12341234", company: "Samsung", job_title: "Senior Software Engineer")
minji.remote_photo_url = 'https://cdn.goodgallery.com/ee7da294-044f-4a50-b8dc-ff63b0946418/s/0200/2au9j1lz/simple-corporate-headshot-grey-studio.jpg'
minji.save

jihye = User.new(first_name: "Ji Hye", last_name: "Song", email: "jihye@email.com", password: "12341234", company: "KIA", job_title: "Chief Technology Officer")
jihye.remote_photo_url = 'https://img.huffingtonpost.com/asset/5a50bc5b1c0000f98768ee73.jpg?ops=200_200'
jihye.save

xuying = User.new(first_name: "Xu Ying", last_name: "Xian", email: "xuying@email.com", password: "12341234", company: "Xian Beijing Florist", job_title: "Owner")
xuying.remote_photo_url = 'https://images.freeimages.com/images/premium/large-thumbs/2334/23342765-asian-businesswoman-portrait.jpg'
xuying.save

aisha = User.new(first_name: "A'isha", last_name: "Maalouf", email: "aisha@email.com", password: "12341234", company: "Emirates", job_title: "Pilot")
aisha.remote_photo_url = 'https://www.womenforwomen.org/sites/default/files/styles/200x200/public/Zainab_Salbi%20headshot_2017_0.jpeg?itok=jjTzlks_'
aisha.save

elane = User.new(first_name: "Elane", last_name: "Proctor", email: "elane@email.com", password: "12341234", company: "Procter and Gamble", job_title: "Customer Intelligence Analyst")
elane.remote_photo_url = 'https://www.businessboutique.com/wp/uploads/2018/03/AmyJoHeadshot_.jpg'
elane.save

janna = User.new(first_name: "Janna", last_name: "De Vos", email: "janna@email.com", password: "12341234", company: "Grab", job_title: "Product Manager")
janna.remote_photo_url = 'https://media.licdn.com/dms/image/C5103AQH-XFCY7Vbvnw/profile-displayphoto-shrink_200_200/0?e=1556755200&v=beta&t=kpN1_njpvDZON2QKXbSlDMFUG9pu_PnyUZK01QFoum4'
janna.save


puts "Users created"

puts "Creating profiles"

puts "Creating users that are just mentors"

ashwin_mentor_profile = Profile.new(user: ashwin, is_mentor: true, description: "Currently, I am the President of Bayer Greater China and Chairman of Bayer (China) Limited, based in Shanghai. I'm interested in connections, in particular connecting people, connecting ideas, and connecting seemingly unrelated topics and trends. I find great enjoyment in mentoring women, and mentoring in general.")
ashwin_mentor_profile.save

george_mentor_profile = Profile.new(user: george, is_mentor: true, description: "Chief Technology Officer of Heroleads" )
george_mentor_profile.save

nancy_mentor_profile = Profile.new(user: nancy, is_mentor: true, description: "I have 12 years of experience in the IT field and currently working as the COO of Google. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
nancy_mentor_profile.save

susan_mentor_profile = Profile.new(user: susan, is_mentor: true, description: "I have 16 years of experience in the IT field and currently working as the Senior Technical Supervisor of FaceBook. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
susan_mentor_profile.save

joyce_mentor_profile = Profile.new(user: joyce, is_mentor: true, description: "I have 20 years of experience in the Finance field and currently working as the financial analyst of Airbnb. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
joyce_mentor_profile.save

lilian_mentor_profile = Profile.new(user: lilian, is_mentor: true, description: "I have 5 years of experience in the finance field and currently working as the chief auditor of Ernst and Young. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
lilian_mentor_profile.save

erica_mentor_profile = Profile.new(user: erica, is_mentor: true, description: "I have 10 years of experience in the finance field and currently working as the actuarial supervisor of Deloitte. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
erica_mentor_profile.save

tiffany_mentor_profile = Profile.new(user: tiffany, is_mentor: true, description: "I have 9 years of experience in the design field and currently working as the designer of Louis Vuitton. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
tiffany_mentor_profile.save

madeline_mentor_profile = Profile.new(user: madeline, is_mentor: true, description: "I have 8 years of experience in the management field and currently working as the head of supply chain development of Volkswagen. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
madeline_mentor_profile.save

julia_mentor_profile = Profile.new(user: julia, is_mentor: true, description: "I have 7 years of experience in the animation field and currently working as the lead animator of Disney. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
julia_mentor_profile.save

alice_mentor_profile = Profile.new(user: alice, is_mentor: true, description: "I have 7 years of experience in the education field and currently working as economics professor of University of Paris. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
alice_mentor_profile.save

minji_mentor_profile = Profile.new(user: minji, is_mentor: true, description: "I have 12 years of experience in the IT field and currently working as the senior software engineer of Samsung. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
minji_mentor_profile.save

jihye_mentor_profile = Profile.new(user: jihye, is_mentor: true, description: "I have 15 years of experience in the IT field and currently working as the chief technology officer of KIA. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
jihye_mentor_profile.save

xuying_mentor_profile = Profile.new(user: xuying, is_mentor: true, description: "I have 15 years of experience in the IT field and I currently runa business called Xian Beijing Florist. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
xuying_mentor_profile.save

aisha_mentor_profile = Profile.new(user: aisha, is_mentor: true, description: "I have 6 years of experience as a pilot and currently working as the pilot of Emirates. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
aisha_mentor_profile.save

elane_mentor_profile = Profile.new(user: elane, is_mentor: true, description: "I have 8 years of experience in the finance field and currently working as the customer intelligence analyst of Procter and Gamble. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
elane_mentor_profile.save

puts "Creating users that are just mentees"

peter_mentee_profile = Profile.new(user: peter, is_mentor: false)
peter_mentee_profile.save

lorenzo_mentee_profile = Profile.new(user: lorenzo, is_mentor: false)
lorenzo_mentee_profile.save

xuying_mentee_profile = Profile.new(user: xuying, is_mentor: false, description: "I have 15 years of experience in the IT field and I currently runa business called Xian Beijing Florist. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
xuying_mentee_profile.save

aisha_mentee_profile = Profile.new(user: aisha, is_mentor: false, description: "I have 6 years of experience as a pilot and currently working as the pilot of Emirates. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
aisha_mentee_profile.save

elane_mentee_profile = Profile.new(user: elane, is_mentor: false, description: "I have 8 years of experience in the finance field and currently working as the customer intelligence analyst of Procter and Gamble. I have passion in helping other women achieve success in whatever they do either personally or professionally." )
elane_mentee_profile.save

janna_mentee_profile = Profile.new(user: janna, is_mentor: false, description: "I have 5 years experience in")
janna_mentee_profile.save

puts "Creating Sheryl profile"

jane_mentor_profile = Profile.new(user: jane, is_mentor: true, description: "I am the chief operating officer of Facebook and am the author of Lean In: Women, Work, and the Will to Lead. I am a strong advocate of increasing diversity in the work place, and believe mentoring is one way we can promote that. Mentoring is not only the right thing to do, but its also the smart thing to do. The data is super clear that more diverse organizations perform better. And we want a world that is safe, that is productive, and it’s going to take using the full talent of the population. I have met many inspiring mentees on Me-oW, and hope to continue to meet more aspiring career-driven women from across the world")
jane_mentor_profile.save

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
george_mentor_i5 = ProfileInterest.create(profile: george_mentor_profile, interest: pr5)
george_mentor_i6 = ProfileInterest.create(profile: george_mentor_profile, interest: pr6)

peter_mentee_i1 = ProfileInterest.create(profile: peter_mentee_profile, interest: pe6)
peter_mentee_i2 = ProfileInterest.create(profile: peter_mentee_profile, interest: pe6)
peter_mentee_i3 = ProfileInterest.create(profile: peter_mentee_profile, interest: pe6)
peter_mentee_i4 = ProfileInterest.create(profile: peter_mentee_profile, interest: pr6)
peter_mentee_i5 = ProfileInterest.create(profile: peter_mentee_profile, interest: pr6)
peter_mentee_i6 = ProfileInterest.create(profile: peter_mentee_profile, interest: pr6)

lorenzo_mentee_i1 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pe2)
lorenzo_mentee_i2 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pe4)
lorenzo_mentee_i3 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pe5)
lorenzo_mentee_i4 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pr2)
lorenzo_mentee_i5 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pr4)
lorenzo_mentee_i6 = ProfileInterest.create(profile: lorenzo_mentee_profile, interest: pr5)

jane_mentor_i1 = ProfileInterest.create(profile: jane_mentor_profile, interest: pe1)
jane_mentor_i2 = ProfileInterest.create(profile: jane_mentor_profile, interest: pe5)
jane_mentor_i3 = ProfileInterest.create(profile: jane_mentor_profile, interest: pe7)
jane_mentor_i4 = ProfileInterest.create(profile: jane_mentor_profile, interest: pr3)
jane_mentor_i5 = ProfileInterest.create(profile: jane_mentor_profile, interest: pr4)
jane_mentor_i6 = ProfileInterest.create(profile: jane_mentor_profile, interest: pr7)

nancy_mentor_i1 = ProfileInterest.create(profile: nancy_mentor_profile, interest: pe2)
nancy_mentor_i2 = ProfileInterest.create(profile: nancy_mentor_profile, interest: pe4)
nancy_mentor_i3 = ProfileInterest.create(profile: nancy_mentor_profile, interest: pe7)
nancy_mentor_i4 = ProfileInterest.create(profile: nancy_mentor_profile, interest: pr3)
nancy_mentor_i5 = ProfileInterest.create(profile: nancy_mentor_profile, interest: pr5)
nancy_mentor_i6 = ProfileInterest.create(profile: nancy_mentor_profile, interest: pr6)

susan_mentor_i1 = ProfileInterest.create(profile: susan_mentor_profile, interest: pe1)
susan_mentor_i2 = ProfileInterest.create(profile: susan_mentor_profile, interest: pe3)
susan_mentor_i3 = ProfileInterest.create(profile: susan_mentor_profile, interest: pe4)
susan_mentor_i4 = ProfileInterest.create(profile: susan_mentor_profile, interest: pr5)
susan_mentor_i5 = ProfileInterest.create(profile: susan_mentor_profile, interest: pr6)
susan_mentor_i6 = ProfileInterest.create(profile: susan_mentor_profile, interest: pr7)

joyce_mentor_i1 = ProfileInterest.create(profile: joyce_mentor_profile, interest: pe4)
joyce_mentor_i2 = ProfileInterest.create(profile: joyce_mentor_profile, interest: pe5)
joyce_mentor_i3 = ProfileInterest.create(profile: joyce_mentor_profile, interest: pe6)
joyce_mentor_i4 = ProfileInterest.create(profile: joyce_mentor_profile, interest: pr4)
joyce_mentor_i5 = ProfileInterest.create(profile: joyce_mentor_profile, interest: pr5)
joyce_mentor_i6 = ProfileInterest.create(profile: joyce_mentor_profile, interest: pr6)

lilian_mentor_i1 = ProfileInterest.create(profile: lilian_mentor_profile, interest: pe2)
lilian_mentor_i2 = ProfileInterest.create(profile: lilian_mentor_profile, interest: pe4)
lilian_mentor_i3 = ProfileInterest.create(profile: lilian_mentor_profile, interest: pe7)
lilian_mentor_i4 = ProfileInterest.create(profile: lilian_mentor_profile, interest: pr4)
lilian_mentor_i5 = ProfileInterest.create(profile: lilian_mentor_profile, interest: pr5)
lilian_mentor_i6 = ProfileInterest.create(profile: lilian_mentor_profile, interest: pr7)

erica_mentor_i1 = ProfileInterest.create(profile: erica_mentor_profile, interest: pe4)
erica_mentor_i2 = ProfileInterest.create(profile: erica_mentor_profile, interest: pe5)
erica_mentor_i3 = ProfileInterest.create(profile: erica_mentor_profile, interest: pe6)
erica_mentor_i4 = ProfileInterest.create(profile: erica_mentor_profile, interest: pr4)
erica_mentor_i5 = ProfileInterest.create(profile: erica_mentor_profile, interest: pr6)
erica_mentor_i6 = ProfileInterest.create(profile: erica_mentor_profile, interest: pr7)

tiffany_mentor_i1 = ProfileInterest.create(profile: tiffany_mentor_profile, interest: pe2)
tiffany_mentor_i2 = ProfileInterest.create(profile: tiffany_mentor_profile, interest: pe4)
tiffany_mentor_i3 = ProfileInterest.create(profile: tiffany_mentor_profile, interest: pe6)
tiffany_mentor_i4 = ProfileInterest.create(profile: tiffany_mentor_profile, interest: pr3)
tiffany_mentor_i5 = ProfileInterest.create(profile: tiffany_mentor_profile, interest: pr5)
tiffany_mentor_i6 = ProfileInterest.create(profile: tiffany_mentor_profile, interest: pr7)

madeline_mentor_i1 = ProfileInterest.create(profile: madeline_mentor_profile, interest: pe1)
madeline_mentor_i2 = ProfileInterest.create(profile: madeline_mentor_profile, interest: pe3)
madeline_mentor_i3 = ProfileInterest.create(profile: madeline_mentor_profile, interest: pe5)
madeline_mentor_i4 = ProfileInterest.create(profile: madeline_mentor_profile, interest: pr4)
madeline_mentor_i5 = ProfileInterest.create(profile: madeline_mentor_profile, interest: pr6)
madeline_mentor_i6 = ProfileInterest.create(profile: madeline_mentor_profile, interest: pr7)

julia_mentor_i1 = ProfileInterest.create(profile: julia_mentor_profile, interest: pe2)
julia_mentor_i2 = ProfileInterest.create(profile: julia_mentor_profile, interest: pe4)
julia_mentor_i3 = ProfileInterest.create(profile: julia_mentor_profile, interest: pe6)
julia_mentor_i4 = ProfileInterest.create(profile: julia_mentor_profile, interest: pr3)
julia_mentor_i5 = ProfileInterest.create(profile: julia_mentor_profile, interest: pr5)
julia_mentor_i6 = ProfileInterest.create(profile: julia_mentor_profile, interest: pr7)

alice_mentor_i1 = ProfileInterest.create(profile: alice_mentor_profile, interest: pe1)
alice_mentor_i2 = ProfileInterest.create(profile: alice_mentor_profile, interest: pe2)
alice_mentor_i3 = ProfileInterest.create(profile: alice_mentor_profile, interest: pe3)
alice_mentor_i4 = ProfileInterest.create(profile: alice_mentor_profile, interest: pr1)
alice_mentor_i5 = ProfileInterest.create(profile: alice_mentor_profile, interest: pr2)
alice_mentor_i6 = ProfileInterest.create(profile: alice_mentor_profile, interest: pr3)

minji_mentor_i1 = ProfileInterest.create(profile: minji_mentor_profile, interest: pe2)
minji_mentor_i2 = ProfileInterest.create(profile: minji_mentor_profile, interest: pe4)
minji_mentor_i3 = ProfileInterest.create(profile: minji_mentor_profile, interest: pe7)
minji_mentor_i4 = ProfileInterest.create(profile: minji_mentor_profile, interest: pr3)
minji_mentor_i5 = ProfileInterest.create(profile: minji_mentor_profile, interest: pr5)
minji_mentor_i6 = ProfileInterest.create(profile: minji_mentor_profile, interest: pr7)

jihye_mentor_i1 = ProfileInterest.create(profile: jihye_mentor_profile, interest: pe4)
jihye_mentor_i2 = ProfileInterest.create(profile: jihye_mentor_profile, interest: pe6)
jihye_mentor_i3 = ProfileInterest.create(profile: jihye_mentor_profile, interest: pe7)
jihye_mentor_i4 = ProfileInterest.create(profile: jihye_mentor_profile, interest: pr1)
jihye_mentor_i5 = ProfileInterest.create(profile: jihye_mentor_profile, interest: pr5)
jihye_mentor_i6 = ProfileInterest.create(profile: jihye_mentor_profile, interest: pr7)

xuying_mentor_i1 = ProfileInterest.create(profile: xuying_mentor_profile, interest: pe2)
xuying_mentor_i2 = ProfileInterest.create(profile: xuying_mentor_profile, interest: pe4)
xuying_mentor_i3 = ProfileInterest.create(profile: xuying_mentor_profile, interest: pe5)
xuying_mentor_i4 = ProfileInterest.create(profile: xuying_mentor_profile, interest: pr1)
xuying_mentor_i5 = ProfileInterest.create(profile: xuying_mentor_profile, interest: pr6)
xuying_mentor_i6 = ProfileInterest.create(profile: xuying_mentor_profile, interest: pr7)

aisha_mentor_i1 = ProfileInterest.create(profile: aisha_mentor_profile, interest: pe3)
aisha_mentor_i2 = ProfileInterest.create(profile: aisha_mentor_profile, interest: pe4)
aisha_mentor_i3 = ProfileInterest.create(profile: aisha_mentor_profile, interest: pe5)
aisha_mentor_i4 = ProfileInterest.create(profile: aisha_mentor_profile, interest: pr1)
aisha_mentor_i5 = ProfileInterest.create(profile: aisha_mentor_profile, interest: pr4)
aisha_mentor_i6 = ProfileInterest.create(profile: aisha_mentor_profile, interest: pr6)

elane_mentor_i1 = ProfileInterest.create(profile: elane_mentor_profile, interest: pe2)
elane_mentor_i2 = ProfileInterest.create(profile: elane_mentor_profile, interest: pe3)
elane_mentor_i3 = ProfileInterest.create(profile: elane_mentor_profile, interest: pe4)
elane_mentor_i4 = ProfileInterest.create(profile: elane_mentor_profile, interest: pr1)
elane_mentor_i5 = ProfileInterest.create(profile: elane_mentor_profile, interest: pr6)
elane_mentor_i6 = ProfileInterest.create(profile: elane_mentor_profile, interest: pr7)

puts "profiles interests created created"

puts "Creating Sheryl's mentee connections"

jane_lorenzo_connection = Connection.new(mentor: jane_mentor_profile, mentee: lorenzo_mentee_profile, status: "confirmed")
jane_lorenzo_connection.save

jane_xuying_connection = Connection.new(mentor: jane_mentor_profile, mentee: xuying_mentee_profile, status: "confirmed")
jane_xuying_connection.save

jane_aisha_connection = Connection.new(mentor: jane_mentor_profile, mentee: aisha_mentee_profile, status: "Pending")
jane_aisha_connection.save

jane_elane_connection = Connection.new(mentor: jane_mentor_profile, mentee: elane_mentee_profile, status: "Pending")
jane_elane_connection.save

jane_peter_connection = Connection.new(mentor: jane_mentor_profile, mentee: peter_mentee_profile, status: "Pending")
jane_peter_connection.save

puts "Sheryl's mentee Connections created"

puts "Creating Sheryl's messages"

lorenzo_jane_message = Message.new(content: "Hi Sheryl, I am super excited to see your profile on the platform. I'd to connect with you and get your advise on working in the tech industry as well as how to handle your work-life balance. Hope to hear from you soon. Laura", user: lorenzo, is_read: true, connection: jane_lorenzo_connection)
lorenzo_jane_message.save

lorenzo_jane_message2 = Message.new(content: "Hi Laura, pleasure to e-meet you. I am available for our first call for Wednesday at 8pm. Does that work for you?", user: jane, is_read: true, connection: jane_lorenzo_connection)
lorenzo_jane_message2.save

xuying_jane_message = Message.new(content: "Hi Sheryl, I'm struggle with being assertive during salary negotiations with my manager. Would love to get your advise on how to negotiate and take these conversations forward. Hope to hear from you. ", user: xuying, is_read: true, connection: jane_xuying_connection)
xuying_jane_message.save

jane_aisha_connection = Message.new(content: "Dear Sheryl, I'd love for you to be my mentor. Please accept my invite. Thanks!", user: aisha, is_read: false, connection: jane_aisha_connection)
jane_aisha_connection.save

puts "Sheryl's messages created"

puts "Creating janna's connections"

janna_minji_connection = Connection.new(mentor: minji_mentor_profile, mentee: janna_mentee_profile, status: "confirmed")
janna_minji_connection.save

janna_susan_connection = Connection.new(mentor: susan_mentor_profile, mentee: janna_mentee_profile, status: "confirmed")
janna_susan_connection.save

janna_ashwin_connection = Connection.new(mentor: ashwin_mentor_profile, mentee: janna_mentee_profile, status: "confirmed")
janna_ashwin_connection.save

puts "Creating Janna's goals"

janna_minji_goal1 = Goal.new(description: "Become a full-stack web developer", connection: janna_minji_connection)
janna_minji_goal1.save

  janna_minji_goal1_ms1 = Milestone.new(description: "Sign up for the Le Wagon Bali full-stack bootcamp", goal: janna_minji_goal1, is_completed: true)
  janna_minji_goal1_ms1.save

  janna_minji_goal1_ms2 = Milestone.new(description: "Complete all prep work before starting the bootcamp", goal: janna_minji_goal1, is_completed: true)
  janna_minji_goal1_ms2.save

  janna_minji_goal1_ms3 = Milestone.new(description: "Make it through the 8 week bootcamp", goal: janna_minji_goal1, is_completed: false)
  janna_minji_goal1_ms3.save

  janna_minji_goal1_ms4 = Milestone.new(description: "Get a first job as a freelance web-developer", goal: janna_minji_goal1, is_completed: false)
  janna_minji_goal1_ms4.save

janna_minji_goal2 = Goal.new(description: "Understand the basics of Advanced Analytics", connection: janna_minji_connection)
janna_minji_goal2.save

  janna_minji_goal2_ms1 = Milestone.new(description: "Attend an advanced analytics conference", goal: janna_minji_goal2, is_completed: true)
  janna_minji_goal2_ms1.save

  janna_minji_goal2_ms2 = Milestone.new(description: "Read Industries of the Future", goal: janna_minji_goal2, is_completed: true)
  janna_minji_goal2_ms2.save

  janna_minji_goal2_ms3 = Milestone.new(description: "Take a Data Visualization course", goal: janna_minji_goal2, is_completed: false)
  janna_minji_goal2_ms3.save

puts "Janna's Goals and milestones created"

# puts "Creating milestones"

# lorenzo_jane_goal1_ms1 = Milestone.new(description: "Sign up to a training course in Product Management", goal: lorenzo_jane_goal1, is_completed: true)
# lorenzo_jane_goal1_ms1.save

# lorenzo_jane_goal1_ms2 = Milestone.new(description: "Complete the training course in Product Management", goal: lorenzo_jane_goal1, is_completed: false)
# lorenzo_jane_goal1_ms2.save

# lorenzo_jane_goal1_ms3 = Milestone.new(description: "Read Inspired: How to Create Products People Love", goal: lorenzo_jane_goal1, is_completed: false)
# lorenzo_jane_goal1_ms3.save

# lorenzo_jane_goal2_ms1 = Milestone.new(description: "Leave the office at 6pm at least 1 time per week", is_completed: true, goal: lorenzo_jane_goal2)
# lorenzo_jane_goal2_ms1.save

# lorenzo_jane_goal2_ms2 = Milestone.new(description: "Commit to specific office hours on google calendar ", is_completed: true, goal: lorenzo_jane_goal2)
# lorenzo_jane_goal2_ms2.save

# lorenzo_jane_goal2_ms3 = Milestone.new(description: "Hold a meeting with my boss", is_completed: true, goal: lorenzo_jane_goal2)
# lorenzo_jane_goal2_ms3.save

# puts "Milestones created"



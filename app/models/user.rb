class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :profiles


  def mentor_profile
    self.profiles.find_by(is_mentor: true)
  end

  def mentee_profile
    self.profiles.find_by(is_mentor: false)
  end

  def mentees
    self.mentor_profile.all_my_mentees
  end

  def mentors
    self.mentee_profile.all_my_mentors
  end
end

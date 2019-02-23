class Profile < ApplicationRecord
  belongs_to :user
  has_many :profile_interests, dependent: :destroy
  has_many :interests, through: :profile_interests
  has_many :mentees, class_name: "Connection", foreign_key: "mentor_id"
  has_many :mentors, class_name: "Connection", foreign_key: "mentee_id"

  # validates :description, presence: true, length: { maximum: 140 }

  def all_my_mentees
    self.mentees.map do |connection|
      connection.mentee.user
    end
  end

  def all_my_mentors
    self.mentors.map do |connection|
      connection.mentor.user
    end
  end

  def self.find_by_interests(first_interest, second_interest)
    Profile.joins(:interests).where(interests: { name: first_interest}).or(Profile.joins(:interests).where(interests: {name: second_interest }))
  end

  def self.find_mentor_by_interests(first_interest, second_interest)
    Profile.joins(:interests).where(interests: { name: first_interest}).or(Profile.joins(:interests).where(interests: {name: second_interest })).where(is_mentor: true)
  end



end

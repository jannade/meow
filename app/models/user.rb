class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :profiles, dependent: :destroy
  has_many :profile_interests, through: :profiles
  has_many :interests, through: :profile_interests
  has_many :messages
  has_many :connections, through: :messages

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :password, length: { minimum: 8 }, unless: :is_password_nil?
  # validates :password, presence: true, if: :is_id_nil?
  # #https://metova.com/how-to-add-password-validation-to-your-devise-models/
  # validates :company, presence: true
  # validates :job_title, presence: true

  def is_password_nil?
    password.nil?
  end

  def is_id_nil?
    id.nil?
  end

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

  def mentor_pending_connections
    if self.profiles.where(is_mentor: true).first
      return self.profiles.where(is_mentor: true).first.mentees.where(status: "Pending").any?
    else
      return false
    end
  end

  def mentee_pending_connections
    if self.profiles.where(is_mentor: false).first
      return self.profiles.where(is_mentor: false).first.mentees.where(status: "Pending").any?
    else
      return false
    end
  end
end

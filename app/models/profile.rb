class Profile < ApplicationRecord
  belongs_to :user
  has_many :profile_interests, dependent: :destroy
end

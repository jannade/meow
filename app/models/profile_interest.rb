class ProfileInterest < ApplicationRecord
  belongs_to :profile
  belongs_to :interest
end

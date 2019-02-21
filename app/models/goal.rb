class Goal < ApplicationRecord
  belongs_to :connection
  has_many :milestones
end

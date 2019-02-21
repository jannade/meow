class Interest < ApplicationRecord


  validates :name, presence: true
  validates :category, inclusion: { in: %w(mentor mentee both), message: "%{value} is not a valid category" }
end

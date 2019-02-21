class Connection < ApplicationRecord
  belongs_to :mentor, class_name: "Profile"
  belongs_to :mentee, class_name: "Profile"
  has_many :messages
  has_many :goals
end

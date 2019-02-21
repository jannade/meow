class Connection < ApplicationRecord
  belongs_to :mentor, class_name: "Profile"
  belongs_to :mentee, class_name: "Profile"
end

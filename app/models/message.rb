class Message < ApplicationRecord
  # attr_accessor :mentor

  belongs_to :user
  belongs_to :connection
  validates :content, presence: true
end

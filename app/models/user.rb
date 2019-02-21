class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, length: { minimum: 8 }, unless: :is_password_nil?
  validates :password, presence: true, if: :is_id_nil?
  #https://metova.com/how-to-add-password-validation-to-your-devise-models/
  validates :company, presence: true
  validates :job_title, presence: true

  def is_password_nil?
    password.nil?
  end

  def is_id_nil?
    id.nil?
  end
end

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  admin      :boolean
#  avatar_url :string
#  email      :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable
  validates :first_name, :last_name, :email, presence: true
  # Include default devise modules.

  def full_name
    if gender == "male"
      "Mr #{first_name} #{last_name}"
    elsif gender == "female"
      "Mrs #{first_name} #{last_name}"
    end
  end
end

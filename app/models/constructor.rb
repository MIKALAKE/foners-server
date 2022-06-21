# == Schema Information
#
# Table name: constructors
#
#  id              :bigint           not null, primary key
#  cover_url       :string
#  description     :string
#  first_apparence :integer
#  logo_url        :string
#  name            :string
#  origins         :string
#  titles          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Constructor < ApplicationRecord
  validates :name, :description, presence: true

  has_many :drivers
  has_many :sponsors
end

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

  scope :by_search, ->(search) { where("name ILIKE ? ", "%#{search}%") }

  has_many :drivers, dependent: :nullify
  has_many :sponsors, dependent: :nullify
end

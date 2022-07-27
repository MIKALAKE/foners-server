# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  city        :string
#  country     :string
#  cover_url   :string
#  date        :date
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  validates :city, :country, :date, :name, presence: true

  scope :by_search, ->(search) { where("name ILIKE ? OR country ILIKE ? ", "%#{search}%", "%#{search}%") }
end

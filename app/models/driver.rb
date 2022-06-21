# == Schema Information
#
# Table name: drivers
#
#  id             :bigint           not null, primary key
#  avatar_url     :string
#  birth_date     :date
#  description    :string
#  first_name     :string
#  height         :integer
#  last_name      :string
#  nationality    :string
#  nickname       :string
#  race_number    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  constructor_id :bigint           not null
#
# Indexes
#
#  index_drivers_on_constructor_id  (constructor_id)
#
# Foreign Keys
#
#  fk_rails_...  (constructor_id => constructors.id)
#
class Driver < ApplicationRecord
  validates :first_name, :last_name, :description, :nickname, presence: true

  belongs_to :constructor

  def full_name
    "#{first_name} #{last_name}"
  end
end

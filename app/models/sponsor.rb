# == Schema Information
#
# Table name: sponsors
#
#  id             :bigint           not null, primary key
#  logo_url       :string
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  constructor_id :bigint           not null
#
# Indexes
#
#  index_sponsors_on_constructor_id  (constructor_id)
#
# Foreign Keys
#
#  fk_rails_...  (constructor_id => constructors.id)
#
class Sponsor < ApplicationRecord
  validates :name, presence: true

  belongs_to :constructor, optional: true
end

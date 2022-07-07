class ConstructorSerializer < ActiveModel::Serializer
  attributes :id, :points, :logo_url, :car
  has_many :drivers
end

class ConstructorSerializer < ActiveModel::Serializer
  attributes :id, :points, :logo_url, :car_url
  has_many :drivers
end

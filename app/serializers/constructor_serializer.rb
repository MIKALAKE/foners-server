class ConstructorSerializer < ActiveModel::Serializer
  attributes :id, :points, :logo_url, :car_url, :description, :name, :first_apparence, :origins, :titles
  has_many :drivers
end

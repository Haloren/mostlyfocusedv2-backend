class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :zip
  
    has_many :events
    has_many :todos
  end
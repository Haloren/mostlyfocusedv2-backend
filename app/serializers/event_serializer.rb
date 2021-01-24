class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date
  has_one :user
end
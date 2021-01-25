class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :user_id
  has_one :user
end

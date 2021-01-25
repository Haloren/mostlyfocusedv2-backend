class TodoSerializer < ActiveModel::Serializer
  attributes :id, :item, :user_id
  has_one :user
end

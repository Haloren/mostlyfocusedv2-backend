class Event < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :date, presence: true #YYYY-MM-DD
end

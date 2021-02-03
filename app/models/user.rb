class User < ApplicationRecord
    has_many :todos, dependent: :destroy
    has_many :events, dependent: :destroy

    validates :name, presence: true
    validates :zip, presence: true, length: { is: 5 }
end

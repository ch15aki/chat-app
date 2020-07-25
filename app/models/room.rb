class Room < ApplicationRecord
    # アソシエーション
    has_many :room_users
    has_many :users, through: :room_users
    # バリデーション
    validates :name, presence: true
end

class Room < ApplicationRecord
    # アソシエーション
    has_many :room_users
    has_many :users, through: :room_users, dependent: :destroy
    has_many :messages, dependent: :destroy
    # バリデーション
    validates :name, presence: true
end

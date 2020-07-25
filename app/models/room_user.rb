class RoomUser < ApplicationRecord
    # アソシエーション
    belongs_to :room
    belongs_to :user
end
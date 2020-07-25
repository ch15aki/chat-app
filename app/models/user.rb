class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #バリデーションを設定
  validates :name, presence: true

  #アソシエーション
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
end

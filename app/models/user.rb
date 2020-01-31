class User < ApplicationRecord
    #auth and validation
    has_secure_password
    validates :username, uniqueness: true

    # associations

    has_many :user_rooms
    has_many :rooms, through: :user_rooms
    has_many :messages
end

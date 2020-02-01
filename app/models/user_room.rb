class UserRoom < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :user_id, uniqueness: {scope: :room_id}

end

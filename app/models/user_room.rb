class UserRoom < ApplicationRecord
  belongs_to :room
  belongs_to :user
end

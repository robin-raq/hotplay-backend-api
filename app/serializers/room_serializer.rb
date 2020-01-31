class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :users
  has_many :messages
  
end

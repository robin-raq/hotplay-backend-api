class MessagesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    #stream_from "messages_channel"
    room = Room.find(params[:room_id])
    stream_for room 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise NotImplementedError
  end
end

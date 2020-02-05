class RoomsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "rooms_channel"
  end

  
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise NotImplementedError
  end
  # def speak(data)
  #   message = Message.create(body: data['message'])
  #   socket = { message: message.body }
  #   ChatChannel.broadcast_to('rooms_channel', socket)
  # end
end

class MessagesController < ApplicationController
    # def root
    # @messages = Message.all 
    # render @messages
    # end
    
    def create
        message = Message.create(message_params)
        # debugger
        #byebug
        serialized_data = ActiveModelSerializers::Adapter::Json.new(
            MessageSerializer.new(message)
            ).serializable_hash
            # byebugs
            MessagesChannel.broadcast_to message.room, serialized_data.merge({room_id: message.room_id})
            head :ok
            #render json: message.room, include: "**"
        
    
    end

    private

    def message_params
        params.permit( :body, :room_id, :user_id )
    end
end

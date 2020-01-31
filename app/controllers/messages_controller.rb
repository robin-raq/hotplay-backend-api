class MessagesController < ApplicationController
    def create
        message = Message.create(message_params)
        #byebug
        render json: message.room, include: "**"
    
    end

    private

    def message_params
        params.permit( :body, :room_id, :user_id )
    end
end

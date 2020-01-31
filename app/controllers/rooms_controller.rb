class RoomsController < ApplicationController
    def index
        rooms = Room.all 
        render json: rooms, include: "**"
    
    end

    def create
        room = Room.create(room_params)
        #byebug
        user = User.find(params[:user][:id])
        room.users.push(user)
        #room.users.push(params[:user])
        if room.valid?
            render json: room, include: "**"
        else
            render json:{errors: room.errors.full_messages}, status: 422
        end
    end

    
    private

    def room_params
        params.permit(:name, :messages, :user)
    end

end

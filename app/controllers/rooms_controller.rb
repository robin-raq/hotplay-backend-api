class RoomsController < ApplicationController
    def index
        rooms = Room.all 
        render json: rooms, include: "**"
    end

    def show
        room = Room.find(params[:id])
        render json: room, include: "**"
    end

    def create
        # byebug
        #check to see if room already exist
        if Room.find_by(name: params[:name]) === nil
            #if it doesn't exist create a new room
            room = Room.create(room_params)
            
        else
            #if it exists render that room
            room = Room.find_by(name: params[:name])
        end

        
        
            if room.valid?
                #add user to that room
                
                user = User.find(params[:user][:id])
                
                UserRoom.create(room: room, user: user)
                # room.users.push(user)  alternatively

                # #for using websockets
                serialized_data = ActiveModelSerializers::Adapter::Json.new(RoomSerializer.new(room)).serializable_hash
                ActionCable.server.broadcast 'rooms_channel', serialized_data.merge({user_id: user.id})
                head :ok
                # #byebug



                #check to see if the UserRoom is valid
                #render json: room, include: "**"

                
                
            else
                
                render json:{errors: room.errors.full_messages}, status: 422
                
            end

    end

    
    private

    def room_params
        params.permit(:name, :messages, :user)
    end

end

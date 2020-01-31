class RoomsController < ApplicationController
    def index
        rooms = Room.all 
        render json: rooms, include: "**"
    
    end
end

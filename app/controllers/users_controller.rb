class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, include: "**"
    
    end

    def show
        user = User.find(params[:id])
        render json: user, include: "**"
    end
    
    
    def create
        user = User.create(user_params)
        
        #debugger 
        if user.valid?
            room = Room.find_by(name:"#trending")
            room.users.push(user)
            welcome = Message.create(body:"joined HotPlay", room: room, user: user)
            

            payload = { user_id: user.id }
            token = JWT.encode(payload, 'chatitup', 'HS256')
            render json: {token: token, user: user}
        else
            render json:{errors: user.errors.full_messages}, status: 422
        end
    end

    def profile
        # byebug
        token = request.headers['Authorization'].split(" ")[1]
        decoded_token = JWT.decode( token, 'chatitup', true, {algorithm: 'HS256'})
        user_id = decoded_token[0]["user_id"]
        current_user = User.find(user_id)
        render json: current_user
    end

    private

    def user_params
        params.permit(:username, :password, :image_url)
    end

end
